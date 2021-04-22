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
use App\Models\Kecamatan;
use App\Models\Kelurahan;
use App\Models\Provinsi;
use App\Models\Transaksis;
use Auth;
use Illuminate\Support\Str;
use Alert;


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


        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        return view('layouts.vendors.index',compact(
            'kategoris',
            'vendors',
            'cekVendor',
            'provincess', ['provincess' => $provincess],
            'vendors',    ['vendors'=> $vendors]),
            ['provinces' => $provinces,]
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
                    // ->select('province_id','name')
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

   public function getVillages($district_id){

    $villagesData['data'] = Kelurahan::orderby("name","asc")
               // ->select('province_id','id','name')
               ->where('district_id',$district_id)
               ->get();
    // echo( $citysData['data']);exit;
   return response()->json($villagesData);
}



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $provincess = IndoProv::orderby("name","asc")
        ->select('id','name')->get();
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        // $provinsi = Provinsi::all();
        return view('layouts.vendors.addvendor',compact('cekVendor','provincess'));
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

    public function addVendor(Request $request)
    {
        $messages = [
            'required' => 'Kolom Wajib diisi!',
        ];

        $this->validate($request, [
            'nama_vendor' => 'required',
            'photo_vendor' => 'required|mimes:jpg,jpeg,png|max:20000',
            'user_id' => 'required',
            'kontak' => 'required',
            'provinsi_id'=>'required',
            'kabupaten_id'=>'required',
            'kecamatan_id'=>'required',
            'kelurahan_id'=>'required',
            'alamat_lengkap' => 'required',
            'ktp' => 'required',
            'status' => 'required',

        ], $messages);

        $new_vendor = new Vendors;
        $new_vendor->nama_vendor = $request->get('nama_vendor');
        $new_vendor->user_id = $request->get('user_id');
        $new_vendor->kontak = $request->get('kontak');
        if($request->file('photo_vendor')){
            $photo_vendor = $request->file('photo_vendor')->store('photo_vendor', 'public');
        }
        $new_vendor->photo_vendor = $photo_vendor;
        $new_vendor->alamat_lengkap = $request->get('alamat_lengkap');
        $new_vendor->provinsi_id = $request->get('provinsi_id');
        $new_vendor->kabupaten_id = $request->get('kabupaten_id');
        $new_vendor->kecamatan_id = $request->get('kecamatan_id');
        $new_vendor->kelurahan_id = $request->get('kelurahan_id');
        $new_vendor->status = $request->get('status');
        $new_vendor->ktp = $request->get('ktp');
        $new_vendor->lokasi = $request->get('kelurahan_id');
        $new_vendor->save();
        if ($new_vendor) {
            //redirect dengan pesan sukses
            return redirect()->route('vendors.success');
        } else {
            //redirect dengan pesan error
            return redirect()->route('vendors.addvendor');
        }
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

    public function succsessVendor()
    {
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        return view('layouts.vendors.success',compact('cekVendor'));
    }

    public function dashboardVendor()
    {
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $profilevendor = Vendors::with('wilayah','kecamatan')->where('user_id',Auth::user()->id)->first();

        return view('layouts.vendors.dashboard',compact('cekVendor','profilevendor'));
    }

    public function jasaVendor()
    {
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $profilevendor = Vendors::with('wilayah','kecamatan')->where('user_id',Auth::user()->id)->first();
        $jasavendor = Jasas::with('vendors.wilayah','vendors.kecamatan')->where('user_id', Auth::user()->id)->paginate(6);
        $jasagedung = Jasas::with('vendors.wilayah','vendors.kecamatan')->where('user_id', Auth::user()->id)->where('kategori_id','2')->paginate(6);
        $jasadekorasi = Jasas::with('vendors.wilayah','vendors.kecamatan')->where('user_id', Auth::user()->id)->where('kategori_id','3')->paginate(6);
        $jasaentertaiment = Jasas::with('vendors.wilayah','vendors.kecamatan')->where('user_id', Auth::user()->id)->where('kategori_id','4')->paginate(6);
        $jasakatering = Jasas::with('vendors.wilayah','vendors.kecamatan')->where('user_id', Auth::user()->id)->where('kategori_id','5')->paginate(6);
        $jasaphotografer = Jasas::with('vendors.wilayah','vendors.kecamatan')->where('user_id', Auth::user()->id)->where('kategori_id','6')->paginate(6);
        $jasatatarias = Jasas::with('vendors.wilayah','vendors.kecamatan')->where('user_id', Auth::user()->id)->where('kategori_id','7')->paginate(6);
        return view('layouts.vendors.jasavendor',compact('cekVendor','profilevendor','jasavendor','jasagedung','jasadekorasi','jasaentertaiment','jasakatering','jasaphotografer','jasatatarias'));
    }

    public function transaksiVendor()
    {

        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $profilevendor = Vendors::with('wilayah','kecamatan')->where('user_id',Auth::user()->id)->first();
        $transaksiall = Transaksis::with('user')->where('vendor_id', $cekVendor->id)->paginate(6);
        $transaksinego = Transaksis::with('user')->where('vendor_id', $cekVendor->id)->where('status',0)->paginate(6);
        $transaksideal = Transaksis::with('user')->where('vendor_id', $cekVendor->id)->where('status',1)->paginate(6);
        $transaksidp = Transaksis::with('user')->where('vendor_id', $cekVendor->id)->where('status',2)->paginate(6);
        $transaksilunas = Transaksis::with('user')->where('vendor_id', $cekVendor->id)->where('status',3)->paginate(6);
        $transaksiselesai = Transaksis::with('user')->where('vendor_id', $cekVendor->id)->where('status',4)->paginate(6);
        $transaksibatal = Transaksis::with('user')->where('vendor_id', $cekVendor->id)->where('status',5)->paginate(6);

        return view('layouts.vendors.transaksivendor',compact('cekVendor','profilevendor','transaksiall','transaksinego','transaksideal','transaksidp','transaksilunas','transaksibatal','transaksiselesai'));
    }

    public function testimoniVendor()
    {
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $profilevendor = Vendors::with('wilayah','kecamatan')->where('user_id',Auth::user()->id)->first();

        return view('layouts.vendors.testimonivendor',compact('cekVendor','profilevendor'));
    }

    public function portfolioVendor()
    {
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $profilevendor = Vendors::with('wilayah','kecamatan')->where('user_id',Auth::user()->id)->first();

        return view('layouts.vendors.portfoliovendor',compact('cekVendor','profilevendor'));
    }

    public function tambahJasaVendor()
    {
        $user_id = Auth::user();
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }
        $kategori = Kategoris::all();
        $profilevendor = Vendors::with('wilayah','kecamatan')->where('user_id',Auth::user()->id)->first();
        return view('layouts.vendors.addjasavendor',compact('cekVendor','profilevendor','kategori'));
    }

    public function prosestambahjasa(Request $request)
    {
        $messages = [
            'required' => 'Kolom Wajib diisi!',
        ];

        $this->validate($request, [
            'nama_jasa' => 'required',
            'photo_jasa' => 'required|mimes:jpg,jpeg,png|max:20000',
            'deskripsi' => 'required',
            'kategori_id' => 'required',
            'vendor_id' => 'required',
            'harga' => 'required',
            'jumlah_dp' => 'required',

        ], $messages);

        $new_jasa = new Jasas;
        $new_jasa->nama_jasa = $request->get('nama_jasa');
        $new_jasa->slug = Str::slug($request->get('nama_jasa'));
        if($request->file('photo_jasa')){
            $photo_jasa = $request->file('photo_jasa')->store('photo_jasa', 'public');
        }
        $new_jasa->photo_jasa = $photo_jasa;
        $new_jasa->deskripsi = $request->get('deskripsi');
        $new_jasa->kategori_id = $request->get('kategori_id');
        $new_jasa->vendor_id = $request->get('vendor_id');
        $new_jasa->harga = $request->get('harga');
        $new_jasa->jumlah_dp = $request->get('jumlah_dp');
        $new_jasa->jumlah_dp_uang = $request->get('jumlah_dp_uang');
        $new_jasa->dilihat = 0;
        $new_jasa->status = $request->get('status');
        $new_jasa->save();
        if ($new_jasa) {
            //redirect dengan pesan sukses

            return redirect()->route('jasa.index')->with(['success' => 'Data Berhasil Disimpan!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('jasa.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }




}
