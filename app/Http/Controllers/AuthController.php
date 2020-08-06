<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login(){
    	return view('login');
    }
     public function postlogin(Request $req){

    	$user_data = array(
    		'username' => $req->get('nama'),
    		'password' =>$req->get('password')
    	);
    	if(Auth::attempt($user_data))
    	{
    		return redirect('/dashboard');
    	}
    	else{
    		return redirect('/login');
    	}
    }
      public function logout(){
        Auth::logout();
        return redirect('/login');
    }

}
