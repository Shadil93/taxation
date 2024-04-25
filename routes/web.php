<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('/form',[HomeController::class,'form'])->name('form');
    Route::POST('/do_form',[homecontroller::class,'do_form'])->name('do_form');
    Route::get('/view',[HomeController::class,'view'])->name('view');
    Route::get('/edit/{id}',[HomeController::class,'edit'])->name('edit');
    Route::get('/delete/{id}',[HomeController::class,'delete'])->name('delete');
    Route::POST('/update/{id}',[HomeController::class,'update'])->name('update');
 
});

Route::get('/logout',[AuthenticatedSessionController::class,'destroy'])->name('logout');
require __DIR__.'/auth.php';
