<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;

use Illuminate\Support\Facades\Auth;
use App\Models\HistoryTransaksi;
use App\Models\User;
use App\Models\Negosiasi_M;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class Negosiasi extends Controller
{
    //

    public function tambahNegosiasi(Request $request) {
        $user_id = Auth::user();
        if($user_id){
            $cekUser = User::where('id',Auth::user()->id)->first();
        }else{
            $cekUser = null;
        }




       

        $messages = [
            'required' => 'Kolom Wajib diisi!',
        ];

        $this->validate($request, [
            'nama_user' => 'required',
            'id_negosiasi' => 'required',
            'id_user'=>'required',
            'id_city'=>'required',
            'id_province'=>'required',
            'id_district'=>'required',
            'id_villages'=>'required',
            'jumlah_negosiasi'=>'required',
            'alamat_lengkap'=>'required',
            'status'=>'required',
            'keterangan'=>'required',

        ], $messages);
        $random = Str::random(10);  
        $data_array = array('Rp.',' ',',00','.');
        $new_negosiasi = new Negosiasi_M;
        $new_negosiasi->nama_user = Auth::user()->name;
        dd($new_negosiasi->nama_user);
        $new_negosiasi->id_negosiasi = $random;
        $new_negosiasi->alamat_lengkap = $request->get('alamat_lengkap');
        $new_negosiasi->id_province = $request->get('id_province');
        $new_negosiasi->id_city = $request->get('id_city');
        $new_negosiasi->id_district = $request->get('id_district');
        $new_negosiasi->id_villages = $request->get('id_villages');
         
        $new_negosiasi->jumlah_negosiasi = str_replace($data_array,[''], $request->get('jumlah_negosiasi'));
        $new_negosiasi->status = "0";
        $new_negosiasi->keterangan = $request->get('keterangan');
        $new_negosiasi->save();

        dd($new_negosiasi);
        if ($new_vendor) {
            //redirect dengan pesan sukses
            return redirect()->route('vendors.success');
        } else {
            //redirect dengan pesan error
            return redirect()->route('vendors.addvendor');
        }

       

        
    }

}
