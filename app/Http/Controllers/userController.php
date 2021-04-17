<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Transaksis;
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
        return view('layouts.user.index');
    }


    public function gethistory()
    {
        //
        return view('layouts.user.index-history');
    }

    public function getstatustransaksi(Request $request)
    {

        // Auth::user()->id; berfungsi untuk menampilkan data berdasarkan session login
        $getuserid = Auth::user()->id;
        // $getstatus = DB::table('transaksis')
        // ->join('users', 'transaksis.user_id', '=', 'users.id')
        // ->join('vendors', 'transaksis.vendor_id', '=', 'vendors.id')
        // ->where('user_id', $getuserid)
        // ->where('vendors.id','transaksis.vendor_id')->get();

        $transaksiPerId = Transaksis::with('vendor')->where('user_id', Auth::user()->id)->get();
        // dd($transaksiPerId);



      // dd($getstatus);
        return view('layouts.user.index-status-transaksi',compact('transaksiPerId'))->with(['getuserid' => $getuserid]);
    }


    public function getprofileuser()
    {
        //
        return view('layouts.user.index-profile-user');
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
        $users = User::findOrFail($id);
        return view('layouts.user.index-profile-user',compact('users'));
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
    public function update(Request $request, $id, User $users)
    {
        //
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
            'no_tlp' => 'required',
        ]);
        var_dump($request);exit;
        $users->update($request->all());


        return redirect()->back()->with('success_message','any message you want');
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
