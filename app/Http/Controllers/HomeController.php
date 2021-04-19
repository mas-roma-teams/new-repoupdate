<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Banner;
use App\Models\Kategoris;
use App\Models\Jasas;
use App\Models\Vendors;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;



class HomeController extends Controller
{

    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function userHome()
    {
        return view('layouts.user.index');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $kategoris = Kategoris::All();
        $banner = Banner::All();
        $jasas = Jasas::with('vendors.wilayah')->get();
        $vendors = DB::select('select * from vendors limit 12');
         $jasas_new = DB::table('jasas')
            ->join('transaksis', 'jasas.id', '=', 'transaksis.jasa_id')
            ->get();
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }

        $jasas_count = $jasas_new->count();

        return view('layouts.home.index-home',compact(array('jasas_count','banner','kategoris','jasas','vendors','cekVendor')));
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
