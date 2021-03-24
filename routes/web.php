<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\VendorsController;
use App\Http\Controllers\JasasController;


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

Route::get('/', function () {
    return view('welcome');
});


// HOME ROUTE
Route::get('/testinghome', [HomeController::class,'index']);

// VENDOR ROUTE
Route::get('/vendors', [VendorsController::class,'index']);
Route::get('vendors/detail/{id}',[VendorsController::class,'show'])->name('vendors.detail-jasa');
Route::get('provinces_id/{id}',[VendorsController::class,'store'])->name('provinces_id.store');
Route::post('vendorsprovices', 'VendorsController@store')
    ->name('vendorsprovice.store');



// JASA ROUTE
Route::get('/jasa-list', [JasasController::class,'index']);

Route::view('/home','home')->middleware('auth');

Route::prefix('user')->group(function () {
	Route::group(['middleware' => 'auth'], function() {
		Route::get('/dashboardadmin', 'Admin\DashboardController@index')->name('admin.dashboard.index');


   });
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

require __DIR__ .'/admin.php';
