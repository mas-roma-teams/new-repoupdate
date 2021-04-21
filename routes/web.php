<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\VendorsController;
use App\Http\Controllers\JasasController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\userController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\GoogleController;
use App\Http\Controllers\KategoriesController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });


// GET PROVINSI  - KOTA
Route::get('/getCity/{provice_id}', [VendorsController::class, 'getCity'] );
Route::get('/getCitys/{provice_id}', [VendorsController::class, 'getCitys'] );
Route::get('get/{id}', 'CategoryController@get_causes_against_category');

// GET Kecamatan
Route::get('/getDistrict/{city_id}', [VendorsController::class, 'getDistrict'] );
// GET Kelurahan
Route::get('/getVillages/{district_id}', [VendorsController::class, 'getVillages'] );


// ROUTE LOGIN USER ADMIN
Route::get('user/home', [HomeController::class, 'userHome'])->name('user.index')->middleware('is_admin');





// HOME ROUTE
Route::get('/', [HomeController::class,'index'])->name('home-awal');

// VENDOR ROUTE
Route::get('/vendors', [VendorsController::class,'index']);
Route::get('vendors/detail/{id}',[VendorsController::class,'show'])->name('vendors.detail-jasa');
Route::get('provinces_id/{id}',[VendorsController::class,'store'])->name('provinces_id.store');
Route::post('vendorsprovices', 'VendorsController@store')
    ->name('vendorsprovice.store');

Route::group(['middleware' => 'auth'], function() {
    // vendor
    Route::get('/tambahvendors', [VendorsController::class,'create'])->name('vendors.addvendor');
    Route::post('prosestambahvendor', [VendorsController::class,'addVendor'])->name('vendors.prosestambahvendor');
    Route::get('/successvendor', [VendorsController::class,'succsessVendor'])->name('vendors.success');
    Route::get('/vendordashboard', [VendorsController::class,'dashboardVendor'])->name('vendors.dashboard');
    Route::get('/vendorjasa', [VendorsController::class,'jasaVendor'])->name('vendors.jasa');
    Route::get('/vendortransaksi', [VendorsController::class,'transaksiVendor'])->name('vendors.transaksi');
    Route::get('/vendortestimoni', [VendorsController::class,'testimoniVendor'])->name('vendors.testimoni');
    Route::get('/vendorportfolio', [VendorsController::class,'portfolioVendor'])->name('vendors.portfolio');

    // user
    Route::get('/userdashboard', [userController::class,'dashboarduser'])->name('users.dashboard');
});


// JASA ROUTE
Route::get('/jasa-list', [JasasController::class,'index']);
Route::get('/jasa-banyak-dicari', [JasasController::class,'getJasaBanyakDicari']);
Route::post('testingdata/{id}', 'JasasController@getJasaCategory')
    ->name('testingdata');

Route::view('/home','home')->middleware('auth');


//Route Log
Route::prefix('user')->group(function () {
	Route::group(['middleware' => 'auth'], function() {

		// LOGIN USER
		Route::get('/testinghome', 'HomeController@index')->name('layouts.home.index-home');
		Route::get('/user/dashboard/{id}',[userController::class, 'index'])->name('layots.user');

		Route::get('/dashboard/history',[userController::class, 'gethistory'])->name('history');
		Route::get('/dashboard/{id}',[userController::class,'show'])->name('users.edit');

		Route::get('/dashboard/status-transaksi',[userController::class, 'getstatustransaksi'])->name('status-transaksi');

		Route::get('/dashboard/profile',[userController::class, 'getprofileuser'])->name('profile');

		// Route::resource('user', userController::class);
   });
});

// ROUTE SEARCH
Route::get('/search/cari',[HomeController::class,'fiturSearch']);
// END ROUTE SEARCH

// ROUTE KATEGORI
Route::get('/semua-kategori',[KategoriesController::class, 'index'])->name('semua-kategori');
// END ROUTE KATEGORI

// ROUTE USER CONTROLER FRONT END
Route::get('user/dashboard/edit/{id}',[userController::class, 'edit']);

// Route::resource('users', userController::class);

Route::post('/test/update/{id}',[userController::class, 'update'])->name('testingupdate');

Route::get('/dashboard/status-transaksi',[userController::class, 'getstatustransaksi'])->name('status-transaksi');

//  END USER CONTROLLER FRONT END




// ---------------- Google login
Route::get('auth/google', [GoogleController::class, 'redirectToGoogle']);
Route::get('auth/google/callback', [GoogleController::class, 'handleGoogleCallback']);

// -------------------- ENd

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

require __DIR__ .'/admin.php';

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
