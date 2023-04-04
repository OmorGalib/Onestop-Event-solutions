<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CreateUserController;
use App\Http\Controllers\ProfileController;

use App\Http\Controllers\HomeController;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
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


Route::get('/', function () {
    return redirect()->route('admin_dashboard');
});
Route::get('/dashboard', function () {
    return redirect()->route('admin_dashboard');
});
Route::get('/home', function () {
    return redirect()->route('admin_dashboard');
});


Route::post('/user-login', [LoginController::class, 'LOGIN'])->name('LOGIN');



#~~~~~~~~~~~~ all admin panel routes ~~~~~~~~~~~~~~

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'role:super-admin|admin']], function () {
    
    Route::get('/dashboard', [AdminController::class,   'dashboard'])->name('admin_dashboard');
    

    Route::get('/profile', [ProfileController::class, 'profile'])->name('profile');
    Route::get('/profile/edit', [ProfileController::class, 'profile_edit'])->name('profile_edit');
    Route::post('/profile/update', [ProfileController::class, 'profile_update'])->name('profile_update');

    Route::get('/otp-list', [AdminController::class, 'otp_list'])->name('otp_list');
});



Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'role:super-admin']], function () {

    Route::resource('/admin-list', CreateUserController::class);
});
