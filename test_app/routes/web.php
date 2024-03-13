<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


Route::get('/user', [UserController::class, 'GetUserList']);
Route::get('/apiData', [UserController::class, 'GetApiData']);