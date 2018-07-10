<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Content;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function welcome()
    {
        $contents = Content::where('category', 'Information')->where('active', 1)->get();
        $banners = Content::where('category', 'Banner')->where('active', 1)->get();
        $quotes = Content::where('category', 'Quote')->where('active', 1)->get();
        return view('welcome', compact('contents', 'banners', 'quotes'));
    }

    public function logout(){
        auth()->logout();
        return redirect('/');
    }
}
