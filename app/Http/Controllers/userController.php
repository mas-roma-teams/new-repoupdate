<?php

namespace App\Http\Controllers;


use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Helpers\Helper;
use App\Models\User;
use Carbon\Carbon;
use App\Models\IndoCity;
use App\Models\Transaksis;
use App\Models\Vendors;
use App\Models\HistoryTransaksi;
use App\Models\Negosiasi;
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

        if ($user_id) {
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
            }else {
                $cekSaldo = null;
            }
        return view('layouts.user.index',compact('cekVendor','cekSaldo','kategoris'));
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

        if ($user_id) {
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
        }else {
                $cekSaldo = null;
         }

        $transaksiPerId = Transaksis::with('vendor')->where('user_id', Auth::user()->id)->get();

        return view('layouts.user.index-status-transaksi',compact('transaksiPerId','cekVendor','kategoris','cekSaldo'))->with(['getuserid' => $getuserid]);
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

        if ($user_id) {
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
            }else {
                $cekSaldo = null;
        }
        $nama_kota = IndoCity::orderby("name","asc")->select('id','name')->get();
        $cek_akhir_saldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
        $kategoris = DB::select('select * from kategoris limit 6');
        $users = User::findOrFail($user_id->id);
        return view('layouts.profile-user.user-profile',compact('cekVendor','users','kategoris','cekSaldo','cek_akhir_saldo','nama_kota'));
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

        if ($user_id) {
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
            }else {
                $cekSaldo = null;
            }
        $cek_akhir_saldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
        $kategoris = DB::select('select * from kategoris limit 6');
        $users = User::findOrFail($user_id->id);
        return view('layouts.user.kode-referal',compact('cekVendor','users','kategoris','cekSaldo','cek_akhir_saldo'));
    }


    public function transaksiUser()
    {
        $user = Auth::user();
        $dataTransaksi = Transaksis::with(['jasa','vendor'])->where('user_id',$user->id)->get();
        // DATA UNTUK PAGINATION 
        // $dataTransaksiSemua = Transaksis::with(['jasa','vendor'])->where('user_id',$user->id)->get();

       
        $dataTransaksiNego = Transaksis::with(['jasa','vendor'])->where('user_id',$user->id)->where('status','=','0')->paginate(5);

        $dataTransaksiDeal = Transaksis::with(['jasa','vendor'])->where('user_id',$user->id)->where('status','=','1')->paginate(5);

        $dataTransaksiDp = Transaksis::with(['jasa','vendor'])->where('user_id',$user->id)->where('status','=','2')->paginate(5);

        $dataTransaksiLunas = Transaksis::with(['jasa','vendor'])->where('user_id',$user->id)->where('status','=','3')->paginate(5);

        $dataTransaksiSelesai = Transaksis::with(['jasa','vendor'])->where('user_id',$user->id)->where('status','=','4')->paginate(5);


        $dataTransaksiBatal = Transaksis::with(['jasa','vendor'])->where('user_id',$user->id)->where('status','=','5')->paginate(5);        
        // dd($dataTransaksiSelesai);

        $user_id = Auth::user();
        
        if($user_id){
            $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
        }else{
            $cekVendor = null;
        }

        if ($user_id) {
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
        }else {
                $cekSaldo = null;
        }

        $cek_akhir_saldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
        
        $kategoris = DB::select('select * from kategoris limit 6');
        return view('layouts.user.status-transaksi',compact(
            'cekVendor',
            'user',
            'kategoris',
            'cekSaldo',
            'cek_akhir_saldo',
            'dataTransaksiNego',
            'dataTransaksi',
            'dataTransaksiDeal',
            'dataTransaksiDp',
            'dataTransaksiLunas',
            'dataTransaksiSelesai',
            'dataTransaksiBatal',

        ));

        
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
        if ($user_id) {
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
            }else {
                $cekSaldo = null;
            }
        $cek_akhir_saldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();    
        $kategoris = DB::select('select * from kategoris limit 6');
        $users = User::findOrFail($user_id->id);
        return view('layouts.user.ganti-password',compact('cekVendor','users','kategoris','cekSaldo','cek_akhir_saldo'));
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
        if ($user_id) {
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
            }else {
                $cekSaldo = null;
            }
        $users = User::findOrFail($id);
         $kategoris = DB::select('select * from kategoris limit 6');
        return view('layouts.user.index-profile-user',compact('users','cekVendor','user_id','cekSaldo'));
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
        if ($user_id) {
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
            }else {
                $cekSaldo = null;
            }
        $users = User::findOrFail($id);
        $kategoris = DB::select('select * from kategoris limit 6');
        return view('layouts.user.edit-user',compact('users','cekVendor','kategoris','cekSaldo'));
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
        $user->city_id = $request->get('city_id');
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
        if ($user_id) {
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
            }else {
                $cekSaldo = null;
            }
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

        $usetrans = DB::table('transaksis')
            ->join('users', 'transaksis.user_id', '=', 'users.' . 'id')
            ->where('user_id',Auth::user()->id)
            ->get();

        // $transaksiuser = DB::table('jasas')
        //     ->join('users', 'vendors.user_id', '=', 'users.' . 'id')
            
        //     ->where('user_id',Auth::user()->id)
        //     ->get();
            
        // dd($transaksiuser);

        //  $data = DB::table('transaksis')
        //     ->select(DB::raw("COUNT(harga_total) as count_harga_total"))
        //     ->join('users', 'transaksis.user_id', '=', 'users.' . 'id')
        //     ->groupBy('user_id')
        //     ->get();




        // dd($usetrans);exit;
        $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();
        // dd($cekSaldo);
        $cek_akhir_saldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get(); 
        $transcount = $usetrans->count();
        $users = User::findOrFail($user_id->id);
        $kategoris = DB::select('select * from kategoris limit 6');
        return view('layouts.user.userdashboard',compact('users','cekVendor','kategoris','usetrans','transcount','cekSaldo','cek_akhir_saldo'));
    }

    public function tarikTunai(){
        $user_id = Auth::user();
            if($user_id){
                $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
            }else{
                $cekVendor = null;
            }
            $cek_akhir_saldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get(); 
         $kategoris = DB::select('select * from kategoris limit 6'); 
         $users = User::findOrFail($user_id->id);
         return view('layouts.user.tarik-dana-layout',compact('users','cekVendor','kategoris','cek_akhir_saldo'));


    }

    public function HistorytarikTunai(){
        $user_id = Auth::user();
            if($user_id){
                $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
            }else{
                $cekVendor = null;
            }
       
            if ($user_id) {
                // UNTUK MENGAMBIL DATA PAGINATE KONTEN
                 $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->paginate(5);
            }else {
                $cekSaldo = null;
            }


        // UNTUK MENGAMBIL JUMLAH DATA SEMUA YANG DI KURANG DENGAN SALDO 
         $cek_akhir_saldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();       
         $kategoris = DB::select('select * from kategoris limit 6'); 
         $users = User::findOrFail($user_id->id);
         return view('layouts.user.history-tarik',compact('users','cekVendor','kategoris','cekSaldo','cek_akhir_saldo','cek_akhir_saldo'));


    }

    public function cekStatusNegosiasi(){
        $user_id = Auth::user();
            if($user_id){
                $cekVendor = Vendors::where('user_id',Auth::user()->id)->first();
                $cekSaldo = HistoryTransaksi::where('user_id',Auth::user()->id)->paginate(5);
                
                $cekNegosiasisUser = Negosiasi::with('jasa.vendors')->where('id_user',Auth::user()->id)->get();
                foreach($cekNegosiasisUser as $users){
                    $users->id_vendor;
                 }
                // dd($cekNegosiasisUser);
                $ambilDataJasaPerVendor = DB::table('negosiasi')
                ->join('jasas', 'negosiasi.id_jasa', '=', 'jasas.id')
                ->join('vendors', 'negosiasi.id_vendor', '=', 'vendors.id')
                ->where('id_vendor','id_user',Auth::user()->id)
                ->get();
                $cekVendors = Negosiasi::where('id_vendor')->orWhere('id_user',Auth::user()->id)->get();
                
                // if($cekVendors >= 1) {
                //     echo 'text';
                //     e
                // }else{
                //     echo 'gas';
                // }
                $jasapervendor = $cekVendors->count();

               
            }else{  
                $cekVendor = null;
                $cekSaldo = null;
                $cekNegosiasisUser = null;

            }
       
          



        // UNTUK MENGAMBIL JUMLAH DATA SEMUA YANG DI KURANG DENGAN SALDO 
         $cek_akhir_saldo = HistoryTransaksi::where('user_id',Auth::user()->id)->get();  
          
         
         $kategoris = DB::select('select * from kategoris limit 6'); 
         $users = User::findOrFail($user_id->id);
         return view('layouts.user.status-negosiasi',compact('users','cekVendor','kategoris','cekSaldo','cek_akhir_saldo','cekVendors','cekNegosiasisUser','cek_akhir_saldo','jasapervendor','ambilDataJasaPerVendor'));


    }
}
