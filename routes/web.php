<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CreateUserController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OtpController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\ParticipantController;
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





Route::post('/otp-request', [OtpController::class, 'otp_request'])->name('otp-request');
Route::get('/otp-request/{token}', [OtpController::class, 'otp_verification_form'])->name('otp-verification-form');
Route::post('/otp-request/send', [OtpController::class, 'send_otp'])->name('send-otp');
Route::post('/otp-request/resend', [OtpController::class, 'resend_otp'])->name('resend-otp');
Route::post('/otp-verification', [OtpController::class, 'otp_verification'])->name('otp-verification');


Route::get('/thankyou', [HomeController::class, 'thankyou'])->name('thankyou');

Route::get('/transaction', [HomeController::class, 'transaction'])->name('transaction');
Route::post('/user-login', [LoginController::class, 'LOGIN'])->name('LOGIN');

Route::resource('/payments', PaymentController::class);

// Route::post('/confirm-payment', [HomeController::class, 'confirmPayment'])->name('confirmPayment');

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
