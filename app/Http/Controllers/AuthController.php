<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Input; //untuk input::get
use Illuminate\Support\Facades\Auth;

use Redirect; //untuk redirect

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    public function login()
    {
    	return view('auth.login2')->with('sukses','Anda Berhasil Login');
    }

    public function postlogin(Request $request)
    {
      // echo "$request->email.$request->password "; die;
    	if(Auth::attempt($request->only('email','password'))){
            $akun = DB::table('users')->where('email', $request->email)->first();
            //dd($akun);
            if($akun->role =='admin'){
                Auth::guard('admin')->LoginUsingId($akun->id);
                return redirect('/dashboard/admin')->with('sukses','Anda Berhasil Login');
            } else if($akun->role =='user'){
                Auth::guard('user')->LoginUsingId($akun->id);
                return redirect('/dashboard/user')->with('sukses','Anda Berhasil Login');
            }
    	}
    	return redirect('/login')->with('error','Akun Belum Terdaftar');
    }

    public function logout()
    {
        if(Auth::guard('admin')->check()){
            Auth::guard('admin')->logout();
        } else if(Auth::guard('user')->check()){
            Auth::guard('user')->logout();
        }
    	return redirect('login')->with('sukses','Anda Telah Logout');
    }


}