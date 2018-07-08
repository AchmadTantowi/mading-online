<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use DB;

class UserController extends Controller
{
    
    public function __construct()
    {
        // $this->middleware('auth');
    }

    public function index()
    {
        $users = User::get();
        return view('admin.user.index', compact('users'));
    }

  

}
