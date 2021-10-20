<?php

use Illuminate\Support\Facades\Route;

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
Route::get('/ravi', function () {
    return view('others');
});
Route::get('/ravi/surega', function () {
    return view('ravi');
});


    Route::get('secfun',[\App\Http\Controllers\FirstController::class,'index']);
    Route::get('total',[\App\Http\Controllers\FirstController::class,'mark']);
    Route::get('form',[\App\Http\Controllers\FirstController::class,'firstform']);
    Route::post('save',[\App\Http\Controllers\FirstController::class,'save']);
    Route::post('update',[\App\Http\Controllers\FirstController::class,'update']);
    Route::get('profile/{id}/{name}',[\App\Http\Controllers\FirstController::class,'profile']);


