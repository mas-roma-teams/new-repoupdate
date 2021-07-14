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
use App\Models\Negosiasi;

use Illuminate\Support\Facades\Auth;
use App\Models\HistoryTransaksi;
use App\Models\User;

use Illuminate\Support\Str;


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

    public function detailjasa($id)
    {
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

        $jasa_lainnya = Jasas::All();
      

        $jasas_count = $jasas_new->count();

        $kategoris = Kategoris::All();
       
        $detail = Jasas::with('transaksis','vendors','vendors.wilayah','vendors.kecamatan')->where('slug',$id)->first();

        // dd($detail);
        
        return view('layouts.jasa.detail-jasa',compact(
            
            'detail',
            'jasa_lainnya',
            'kategoris',
            'provincess',
            'jasas_news',
            'cekVendor',
            'jasas_count',
            ['provincess' => $provincess],));
    }

    public function tambahNegosiasi(Request $request, Negosiasi $new_negosiasi) {
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
           
          
            'jumlah_negosiasi'=>'required',
            'alamat_lengkap'=>'required',
            'keterangan'=>'required',

        ], $messages);
        $random = Str::random(10);  
        $data_array = array('Rp.',' ',',00','.');
        $new_negosiasi = new Negosiasi;
        $new_negosiasi->nama_user = Auth::user()->name;
        $new_negosiasi->id_user = Auth::user()->id;
        // dd($new_negosiasi->nama_user);
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

        //dd($new_negosiasi);exit;
        if ($new_negosiasi) {
            //redirect dengan pesan sukses
            return redirect()->route('vendors.success');
        } else {
            //redirect dengan pesan error
            return redirect()->route('vendors.addvendor');
        }

       

        
    }
}
