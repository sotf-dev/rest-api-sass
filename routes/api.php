<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Books
Route::get('/v1/getbooks', 'LibrosController@books');
Route::get('/v1/getbooksloan', 'LibrosController@bookLoan');
Route::get('/v1/getbooksloanall', 'LibrosController@bookLoanAll');
Route::get('/v1/searchbook/{name}', 'LibrosController@searchBook');
Route::get('/v1/getstudents', 'LibrosController@students');
Route::get('/v1/getauthors', 'LibrosController@authorBook');
