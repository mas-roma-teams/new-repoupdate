<?php

namespace App\Http\Controllers;

use App\Models\Jasas;
use Illuminate\Http\Request;
use App\Models\Kategoris;
use Illuminate\Support\Facades\DB;
use App\Models\Ratings_Place;
use Laravolt\Indonesia\Models\Province;
use Laravolt\Indonesia\Models\City;
use App\Models\IndoProv;
use App\Models\IndoCity;
use App\Models\Kecamatan;
use App\Models\Vendors;
use Auth;


class JasasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        $datakategori =[];
        $kategoris = DB::select('select * from kategoris limit 6');
        $rating_place = Ratings_Place::All();
        $jasas = DB::table('jasas')
        ->Where(function ($query) use($datakategori) {
            for ($i = 0; $i < count($datakategori ); $i++){
                  $query->Where('kategori_id', $datakategori);
            }
        })
        ->paginate(6);

        $provincess = IndoProv::orderby("name","asc")
                    ->select('id','name')->get();
        $jasas_new = Jasas::All();

        $jasas_new = DB::table('jasas')
            ->join('transaksis', 'jasas.id', '=', 'transaksis.jasa_id')
            ->get();

        $getJasaCat = DB::table('kategoris')
            ->join('jasas', 'kategoris.id', '=', 'jasas.kategori_id')
            ->get();


        $jasas_count = $jasas_new->count();

        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        // dd($jasas_new);


        return view('layouts.jasa.index-jasa',compact(
            'kategoris',
            'provincess',
            'jasas_new',
            'getJasaCat',
'cekVendor',
            'jasas',
            'jasas_count',
            ['provincess' => $provincess],
            'rating_place',
            'jasas',
            ['jasas'=> $jasas])
        );
     }


    public function getCitys($province_id){

         $citysData['data'] = IndoCity::orderby("name","asc")
                    // ->select('province_id','id','name')
                    ->where('province_id',$province_id)
                    ->get();
         echo( $citysData['data']);exit;
        return response()->json($citysData);
    }

    public function getDistrict($city_id){

        $districtData['data'] = Kecamatan::orderby("name","asc")
                   // ->select('province_id','id','name')
                   ->where('city_id',$city_id)
                   ->get();
        // echo( $citysData['data']);exit;
       return response()->json($districtData);
   }



    public function getJasaBanyakDicari()
    {
        //
        $provincess = IndoProv::orderby("name","asc")
                    ->select('id','name')->get();

        $jasas_news = Jasas::orderBy('dilihat','desc')->paginate(9);
        // dd($jasas_news);

        // Mengambil data dilihat dan transaksi
        $jasas_new = DB::table('jasas')
            ->join('transaksis', 'jasas.id', '=', 'transaksis.jasa_id')
            ->get();

        $getJasaCat = DB::table('kategoris')
            ->join('jasas', 'kategoris.id', '=', 'jasas.kategori_id')
            ->get();

        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }

        $jasas_count = $jasas_new->count();

         $kategoris = Kategoris::All();
        return view('layouts.jasa.index-jasa-dicari',compact(
            'kategoris',
            'provincess',
            'jasas_news',
            'cekVendor',
            'jasas_count',
            ['provincess' => $provincess],

           )
        );
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
     * @param  \App\Models\Jasas  $jasas
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        // $jasas = Jasas::findOrFail($id);


    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Jasas  $jasas
     * @return \Illuminate\Http\Response
     */
    public function edit(Jasas $jasas)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Jasas  $jasas
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Jasas $jasas)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Jasas  $jasas
     * @return \Illuminate\Http\Response
     */
    public function destroy(Jasas $jasas)
    {
        //
    }
}
