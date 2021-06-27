<?php

namespace App\Http\Controllers;

use App\Models\Chat;
use App\Models\Vendors;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;


class ChatController extends Controller
{
    public function historyChat()
    {

    }

    public function ChatView()
    {
        $kategoris = DB::select('select * from kategoris limit 6');
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }

        return view('layouts.chat.index',compact('kategoris','cekVendor'));
    }

    public function sendChat(Request $request)
    {
        dd($request->all());
        try {
            if($request->status_chat == 'deal'){
                $statusChat = 'deal';
            }else{
                if($request->nominal > 0){
                    $statusChat = 'nego';
                }else{
                    $statusChat = 'chat';
                }
            }

            $send = new Chat();
            $send->user = $request->user;
            $send->vendor = $request->vendor;
            $send->kode_chat = Str::random(32);
            $send->jasa_id = $request->jasa_id;
            $send->nominal = $request->nominal ?? 0;
            $send->pesan = $request->pesan ?? null;
            $send->status_chat = $statusChat;
            $send->is_read = 0;
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
