<?php

namespace App\Http\Controllers;

use App\Models\Vendors;
use App\Models\Jasas;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Kategoris;
use App\Models\Ratings_Place;
use Laravolt\Indonesia\Models\Province;
use Laravolt\Indonesia\Models\City;


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
        $rating_place = Ratings_Place::All();
        $kategoris = Kategoris::All();
        $provinces = Province::pluck('name', 'id');
        // $cities = City::where('province_id', $request->get('id'))
        // return response()->json($cities);
        return view('layouts.vendors.index',compact('kategoris','rating_place','vendors',['vendors'=> $vendors]),[
            'provinces' => $provinces,
        ]);
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
