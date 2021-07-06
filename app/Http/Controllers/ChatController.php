<?php

namespace App\Http\Controllers;

use App\Models\Chat;
use App\Models\Jasas;
use App\Models\Vendors;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;


class ChatController extends Controller
{
    public function historyChat(Request $request)
    {
        try{
            $vendor = Vendors::where('id',$request->segment(3))->first();
            $history = Chat::with('jasa','users')->with('vendors')->where('user',Auth::user()->id)->where('vendor',$vendor->id)->orderBy('created_at','ASC')->get();
            return response()->json(
                [
                    'data' => $history,
                    'status' => true
                ]
            );

        } catch (Exception $e) {
            return response()->json(
                [
                    'status' => false,
                    'message' => $e->getMessage()
                ]
            );
        }

    }

    public function listHistoryVendor()
    {
        try{
            $getHistory = Chat::select(DB::raw('MAX(id) as parent_id'))
            ->where('user',Auth::user()->id)
            ->orderBy('tanggal','DESC')
            ->groupBy('vendor')
            ->get();

            $arr = [];
            foreach ($getHistory as $value) {
                array_push($arr, $value->parent_id);
            }

            $data =
            Chat::with(['vendors'])
            ->whereIn('id', $arr)
            ->get();

            // $counttotal = Chat::with('vendors')->select(DB::Raw('kode_chat, COUNT(is_read) as read'))->where('is_read', 0)->where('user', Auth::user()->id)->groupBy('kode_chat')->get();

            return response()->json(
                [
                    'data' => $data,
                    // 'total' => $counttotal,
                    'status' => true
                ]
            );

        } catch (Exception $e) {
            return response()->json(
                [
                    'status' => false,
                    'message' => $e->getMessage()
                ]
            );
        }
    }


    public function ChatView(Request $request)
    {


        $vendor = Vendors::where('id',$request->segment(2))->first();
        // dd($vendor);
        if($vendor){
            if($vendor->user_id == Auth::user()->id){
                return redirect()->back();
             }
             $historyChat = Chat::with('jasa','vendors','users')->where('user',Auth::user()->id)->where('vendor',$vendor->id)->orderBy('created_at','ASC')->get();
        }

        $jasa = Jasas::where('slug',$request->jasa)->first();
        $cekChat = Chat::where('user',Auth::user()->id)->where('vendor',$vendor->id)->where('jasa_id',$jasa->id)->first();


        // dd($cekChat);
        $cekJasa = Jasas::where('slug', $request->jasa)->first();

        // dd($historyChat);
        $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        if($cekVendor){
            if($cekVendor->id == $vendor->id){
                $sendreplay = "replay";
            }else{
                $sendreplay = "send";
            }
        }else{
            $sendreplay = "send";
        }

        if($cekChat){
            $jasaid = 0;
        }else{
            if($cekJasa){
                $jasaid = $cekJasa->id;
            }
            else {
                $jasaid = 0;
            }
        }

        $kategoris = DB::select('select * from kategoris limit 6');
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }


        return view('layouts.chat.index',compact('jasa','kategoris','cekVendor','vendor','cekChat','cekJasa','jasaid','historyChat','sendreplay'));
    }

    public function sendChat(Request $request)
    {

        try {
            if($request->status_chat == 'deal'){
                $statusChat = 'deal';
            }else{
                if(is_numeric($request->pesan)){
                    if($request->pesan > 0){
                        $statusChat = 'nego';
                        $nominal = $request->pesan;
                    }else{
                        $statusChat = 'chat';
                    }
                }else{
                    $statusChat = 'chat';
                }
            }

            if($request->kode_chat){
                $kode = $request->kode_chat;
            }else{
                $kode = Str::random(32);
            }

            $send = new Chat();
            $send->user = $request->user;
            $send->vendor = $request->vendor;
            $send->kode_chat = $kode;
            $send->jasa_id = $request->jasa_id;
            $send->nominal = $nominal ?? 0;
            $send->pesan = $request->pesan ?? null;
            $send->status_chat = $statusChat;
            $send->is_read = 0;
            $send->status_send_replay = $request->status_send_replay;
            $send->tanggal = date('Y-m-d');
            $send->jam = date('H:i:s');
            $send->save();

            return response()->json(
                [
                    'data' => $send,
                    'status' => true
                ]
            );

        } catch (Exception $e) {
            return response()->json(
                [
                    'status' => false,
                    'message' => $e->getMessage()
                ]
            );
        }
    }

    public function historyPengirimChat()
    {

    }


}
