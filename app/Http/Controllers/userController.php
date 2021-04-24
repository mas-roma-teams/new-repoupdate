<?php

namespace App\Http\Controllers;


use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Helpers\Helper;
use App\Models\User;
use App\Models\Transaksis;
use App\Models\Vendors;
use Illuminate\Support\Facades\DB;
use Laravel\Socialite\Facades\Socialite;
use Auth;

class userController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
         $kategoris = DB::select('select * from kategoris limit 6');
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        return view('layouts.user.index',compact('cekVendor','kategoris'));
    }


    public function gethistory()
    {
        //
        return view('layouts.user.index-history');
    }

    public function getstatustransaksi(Request $request)
    {

        $getuserid = Auth::user()->id;
        $transaksiPerId = Transaksis::with(['vendor'])->where('user_id', Auth::user()->id)->get();

        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }

        $transaksiPerId = Transaksis::with('vendor')->where('user_id', Auth::user()->id)->get();

        return view('layouts.user.index-status-transaksi',compact('transaksiPerId','cekVendor','kategoris'))->with(['getuserid' => $getuserid]);
    }


    public function getprofileuser()
    {
        //
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
         $kategoris = DB::select('select * from kategoris limit 6');
        $users = User::findOrFail($user_id->id);
        return view('layouts.profile-user.user-profile',compact('cekVendor','users','kategoris'));
    }

    public function kodeReferal()
    {
        //
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
         $kategoris = DB::select('select * from kategoris limit 6');
        $users = User::findOrFail($user_id->id);
        return view('layouts.user.kode-referal',compact('cekVendor','users','kategoris'));
    }


    public function gantipassword()
    {
        //
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $kategoris = DB::select('select * from kategoris limit 6');
        $users = User::findOrFail($user_id->id);
        return view('layouts.user.ganti-password',compact('cekVendor','users','kategoris'));
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
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $users = User::findOrFail($id);
         $kategoris = DB::select('select * from kategoris limit 6');
        return view('layouts.user.index-profile-user',compact('users','cekVendor','user_id'));
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
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $users = User::findOrFail($id);
        $kategoris = DB::select('select * from kategoris limit 6');
        return view('layouts.user.edit-user',compact('users','cekVendor','kategoris'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id, User $users)
    {
        //
        // $request->validate([
        //     'photo_profile'     => '|image|mimes:png,jpg,jpeg',
        //     'name' => 'required',
        //     'email' => 'required',
        //     'no_tlp' => 'required',
        // ]);
        // var_dump($request);exit;
        $user = User::findOrFail($id);
        $user->name = $request->get('name');
        $user->email = $request->get('email');
        $user->no_tlp = $request->get('no_tlp');
        if ($request->hasFile('photo_profile')) {
            // $post->delete_image();
            $photo_profile = $request->file('photo_profile');
            // echo $photo_profile;exit;
            $name = rand(1000, 9999) . $photo_profile->getClientOriginalName();
            $photo_profile->move('themes/frontend/images/user', $name);
            $user->photo_profile = $name;
        }
        $user->save();
        // $users->update($request->all());


        return redirect()->route('home-awal');
    }

    public function updatePassword(Request $request,$id, User $users)
    {
        //
        $request->validate([
            
            'password' => 'required',
          
        ]);
        // var_dump($request);exit;
        $user = User::findOrFail($id);
        $user->password = Hash::make($request->password);
        // echo $user->password;exit;
        $user->save();
        // $users->update($request->all());


        return redirect()->route('home-awal');
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

    public function dashboarduser()
    {
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $users = User::findOrFail($user_id->id);
        $kategoris = DB::select('select * from kategoris limit 6');
        return view('layouts.user.userdashboard',compact('users','cekVendor','kategoris'));
    }
}
