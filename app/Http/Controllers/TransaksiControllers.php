<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\HistoryTransaksi;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class TransaksiControllers extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // UNTUK PEMANGGILAN DI STATUS DI TRANSAKSI NANTI

        $date = Carbon::parse(now())->locale('id');

        $date->settings(['formatFunction' => 'translatedFormat']);

        echo $date->format('l, j F Y ; h:i a'); // Selasa, 16 Maret 

        // BUAT CATATAN AJA 
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $user_id = Auth::user();
        if($user_id){
            $cekUser = User::where('id',Auth::user()->id)->first();
        }else{
            $cekUser = null;
        }




        $request->validate([
            'jumlah_penarikan' => 'required',
            'metode_penarikan' => 'required',
            'user_id' => 'required',

        ]);

        $data_array = array('Rp.',' ',',00','.');
        DB::table('histrory_transaksi')->insert([
            'jumlah_penarikan'=>str_replace($data_array,[''], $request->jumlah_penarikan),
            'user_id' => Auth::user()->id,
            'metode_penarikan'=>$request->metode_penarikan,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
        // dd($post);
        return redirect()->intended('user/dashboard')->with(['succes'] => 'UANG ANDA BERHASIL DI CAIRKAN...');

        // $user = new HistoryTransaksi ;
        // $user->jumlah_penarikan = $request->get('jumlah_penarikan');
        // $user->metode_penarikan = $request->get('metode_penarikan');
        // $user->user_id = $cekUser;
        // $user->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
