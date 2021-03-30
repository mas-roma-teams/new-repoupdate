<?php

namespace App\Http\Controllers;

use App\Models\Vendors;
use App\Models\Jasas;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Kategoris;
// use App\Models\Ratings_Place;
use Laravolt\Indonesia\Models\Province;
use Laravolt\Indonesia\Models\City;
use App\Models\IndoProv;
use App\Models\IndoCity;


class VendorsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $vendors = DB::table('vendors')->paginate(9);
        // $rating_place = Ratings_Place::All();
        $kategoris = Kategoris::All();
        $provinces = Province::pluck('name', 'id');
        // $vendors = Vendors::lastest()->get();
        // $jasa = Jasas::all();
        // $vendors2 = Vendors::join('jasas', 'jasas.vendor_id', '=', 'vendors.id')
        //        ->get();

        // $vendors3 = Jasas::join('vendors', 'vendors.id', '=', 'jasas.vendor_id')
        //       ->join('transaksis', 'transaksis.vendor_id', '=', 'vendors.id')
        //       ->get('vendors.*', 'jasas.vendor_id', 'vendors');

        // $testing = DB::table('vendors')
        //     ->join('jasas', 'vendors.id', '=', 'jasas.vendor_id')
        //     ->join('transaksis', 'vendors.id', '=', 'transaksis.vendor_id')
        //     ->select('vendors.*', 'jasas.dilihat')
        //     ->get();
        // $cities = City::where('province_id', $request->get('id'))
        // return response()->json($cities);

        //Fetch Provinces
        $provincess = IndoProv::orderby("name","asc")
                                        ->select('id','name')->get();


        // Get kota
       

        return view('layouts.vendors.index',compact(
            'kategoris',
          
            'vendors',
            
            'provincess', ['provincess' => $provincess],
            'vendors',    ['vendors'=> $vendors]),
        [
            'provinces' => $provinces,
        ]

    );
    }   

    public function getCity($provincessid=0){

         $cityData['data'] = IndoCity::orderby("name","asc")
                    ->select('province_id','name')
                    ->where('id',$provincessid)
                    ->get();
         var_dump( $cityData['data']);exit;
        return response()->json($cityData);
    }

    public function getCitys($province_id){

         $citysData['data'] = IndoCity::orderby("name","asc")
                    ->select('province_id','name')
                    ->where('province_id',$province_id)
                    ->get();
         echo( $citysData['data']);exit;
        return response()->json($citysData);
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
        $cities = City::where('province_id', $request->get('id'))
            ->pluck('name', 'id');
    
        return response()->json($cities);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Vendors  $vendors
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
         $vendors = Vendors::findOrFail($id);
        //  $vendors = Product::latest($id)->when(request()->q, function($products) {
        //     $vendors = $vendors->where('title', 'like', '%'. request()->q . '%');
        // });
         // return $vendors;exit;
         return view('layouts.vendors.detail-vendor',compact('vendors'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Vendors  $vendors
     * @return \Illuminate\Http\Response
     */
    public function edit(Vendors $vendors)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Vendors  $vendors
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Vendors $vendors)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Vendors  $vendors
     * @return \Illuminate\Http\Response
     */
    public function destroy(Vendors $vendors)
    {
        //
    }


}
