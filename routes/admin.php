<?php

use Illuminate\Support\Facades\Route;
use Laravel\Fortify\Http\Controllers\AuthenticatedSessionController;

Route::prefix('admin')->middleware('theme:admin')->name('admin.')->group(function (){
    Route::view('login','auth.login')->middleware('guest:admin')->name('login');
    $limiter = config('fortify.limiters.login');
    Route::post('/login', [AuthenticatedSessionController::class, 'store'])
        ->middleware(array_filter([
            'guest:admin',
            $limiter ? 'throttle:'.$limiter : null,
        ]));

    Route::view('home','home')->middleware('auth:admin')->name('home');
    Route::post('/logout', [AuthenticatedSessionController::class, 'destroy'])->middleware('auth:admin')
        ->name('logout');
});


// Route::get('/','Admin\DashboardController@index');
Route::get('/dashboard','Admin\DashboardController@index')->name('dashboard');
Route::resource('/admin','Admin\AdminController');
Route::get(
    'admin/{id}/delete',
    [
        'uses' => 'Admin\AdminController@destroy',
        'as' => 'admin.admin.destroy'
    ]
);
Route::resource('/user','Admin\UserController');
Route::get('user/{id}/delete',[
        'uses' => 'Admin\UserController@destroy',
        'as' => 'admin.user.destroy'
    ]
);

