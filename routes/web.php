<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\HomeController;
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

Auth::routes(['verify' => true]);

Route::get('/register', function () {
    return view('NotFound');
});
Route::get('/password-reset', function () {
    return view('NotFound');
});
Route::get('/forget-password', function () {
    return view('NotFound');
});



Route::post('/user-login', [LoginController::class, 'LOGIN'])->name('LOGIN');



#~~~~~~~~~~~~ all admin panel routes ~~~~~~~~~~~~~~

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'role:super-admin|admin']], function () {
    
    
    
});



Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'role:super-admin']], function () {

   
});
