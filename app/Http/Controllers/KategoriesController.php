<?php

namespace App\Http\Controllers;

use App\Models\Kategories;
use Illuminate\Http\Request;
use App\Models\Kategoris;
use Illuminate\Support\Facades\Auth;
use App\Models\Vendors;

class KategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $kategoris = Kategoris::All();
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }


        return view('layouts.kategori.all-kategori',compact(array('kategoris','cekVendor')));
    
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
     * @param  \App\Models\Kategories  $kategories
     * @return \Illuminate\Http\Response
     */
    public function show(Kategories $kategories)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Kategories  $kategories
     * @return \Illuminate\Http\Response
     */
    public function edit(Kategories $kategories)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Kategories  $kategories
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Kategories $kategories)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Kategories  $kategories
     * @return \Illuminate\Http\Response
     */
    public function destroy(Kategories $kategories)
    {
        //
    }
}
