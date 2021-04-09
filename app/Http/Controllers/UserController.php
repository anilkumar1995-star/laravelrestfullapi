<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Phone;
class UserController extends Controller
{
    public function index()
    {
    	# code...
       // hasOne();
    	$users=User::where('id',1)->first();

    	// belongsTo();
    	$phones=Phone::where('id',1)->first();

    	dd($phones);
    }
}
