<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Banner;
use App\Models\Kategoris;
use App\Models\Jasas;
use App\Models\Vendors;
use App\Models\IndoProv;
use App\Models\IndoCity;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Provinsi;
use Laravolt\Indonesia\Models\Province;
use Laravolt\Indonesia\Models\City;



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
    // public function index()
    // {
       
    //     $kategoris = DB::select('select * from kategoris limit 6');
    //     $banner = Banner::All();
    //     $jasas = Jasas::with('vendors.wilayah','vendors.kecamatan')->get();
    //      // dd($jasas);
    //     $jasas_news = Jasas::orderBy('dilihat','desc')->limit(8)->get();
    //     $vendors = DB::select('select * from vendors limit 8');
    //     $jasa_terbaru = Jasas::OrderBy('created_at','desc')->limit(8)->get();
    //     // dd($jasa_terbaru);
    //     $jasas_new = DB::table('jasas')
    //         ->join('transaksis', 'jasas.id', '=', 'transaksis.jasa_id')
    //         ->get();

        
    //     $user_id = Auth::user();
    //     if($user_id){
    //         $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
    //     }else{
    //         $cekVendor = null;
    //     }

    //     $jasas_count = $jasas_new->count();

    //     return view('layouts.home.index-home',compact(array('jasas_count','banner','jasas_news','kategoris','jasas','vendors','cekVendor','jasa_terbaru')));
    // }

    public function index(){
       
        $kategoris = DB::select('select * from kategoris limit 6');
        $banner = Banner::All();
        $jasas = Jasas::with('vendors.wilayah','vendors.kecamatan')->get();
         // dd($jasas);
        $jasas_news = Jasas::orderBy('dilihat','desc')->limit(8)->get();
        $vendors = DB::select('select * from vendors limit 8');
        $jasa_terbaru = Jasas::OrderBy('created_at','desc')->limit(8)->get();
        // dd($jasa_terbaru);
        $jasas_new = DB::table('jasas')
            ->join('transaksis', 'jasas.id', '=', 'transaksis.jasa_id')
            ->get();

        // $lokasi_koor = DB::table('jasas')
        //     ->join('users', 'jasas.city_id', '=', 'users.'Auth::user()->city_id'')
        //     // ->where('city_id',Auth::user()->city_id)
        //     ->get();
        // dd($lokasi_koor);

        $city_id = Auth::user();
        if($city_id){
            // $cekKota = Jasas::where('city_id',Auth::user()->city_id)->first();
            $cekKota = Jasas::with('kota')->where('city_id',Auth::user()->city_id)->get();
        }else{
            $cekKota = null;
        }

        // dd($cekKota);



        
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }

      
       


        $jasas_count = $jasas_new->count();

        return view('layouts.home.index-home',compact(array('cekKota','jasas_count','banner','jasas_news','kategoris','jasas','vendors','cekVendor','jasa_terbaru')));
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

    /*
        FITUR SEARCH DI HOME
    */

    //
    // public function fiturSearch(Request $request)
    // {
    //     // menangkap data pencarian
    //     $user_id = Auth::user();
    //     if($user_id){
    //         $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
    //     }else{
    //         $cekVendor = null;
    //     }

    //     $jasas_new = DB::table('jasas')
    //         ->join('transaksis', 'jasas.id', '=', 'transaksis.jasa_id')
    //         ->get();
    //     $provinces = Province::pluck('name', 'id');
    //     $provincess = IndoProv::orderby("name","asc")
    //                 ->select('id','name')->get();
    //     $jasas_count = $jasas_new->count();

    //     $keyword = $request->keyword;
    //     $kategoris = DB::select('select * from kategoris limit 6');
    //     // mengambil data dari table pegawai sesuai pencarian data
    //     $jasas = DB::table('jasas')
    //     ->where('nama_jasa','like',"%".$keyword."%")
    //     ->paginate();
    //     // dd($jasas);
    //     return view('layouts.home.fitur-search',['jasas' => $jasas],compact('cekVendor','provincess','jasas_new','jasas_count','kategoris','provinces'));

    // }


    public function fiturSearch(Request $request)
    {
        //

        $vendors = DB::table('vendors')->paginate(6);
        $kategoris = DB::select('select * from kategoris limit 6');
        $provinces = Province::pluck('name', 'id');

        $provincess = IndoProv::orderby("name","asc")
                                        ->select('id','name')->get();
         $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $jasas_new = DB::table('jasas')
           ->join('transaksis', 'jasas.id', '=', 'transaksis.jasa_id')
           ->get();
        $keyword = $request->keyword;
        $jasas = DB::table('jasas')
        ->where('nama_jasa','like',"%".$keyword."%")
        ->paginate();

         $jasas_count = $jasas_new->count();
        return view('layouts.home.fitur-search',compact(
            'kategoris',
            'keyword',
            'vendors',
            'jasas_new',
            'jasas_count',
            'cekVendor',
            'provincess', ['provincess' => $provincess],
            'jasas' ,
            'vendors',    ['vendors'=> $vendors]),
            ['provinces' => $provinces,]
        );
    }



    public function getCitys($province_id){

         $citysData['data'] = IndoCity::orderby("name","asc")
                    ->select('province_id','name')
                    ->where('province_id',$province_id)
                    ->get();
         echo( $citysData['data']);exit;
        return response()->json($citysData);
    }
}

