<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::group(
['prefix' => 'v1','namespace' => 'App\Http\Controllers\Api'], function()
{
    Route::post('add_book', 'BookController@store');
	Route::get('allbooklist', 'BookController@allbooklist');
	Route::get('book/{id}', 'BookController@index');
	Route::post('update_book', 'BookController@update');
	Route::post('delete_book', 'BookController@destroy');
    
});


   


