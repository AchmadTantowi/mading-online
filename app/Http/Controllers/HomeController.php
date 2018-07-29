<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Content;
use Twitter;

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
        $getMentions = Twitter::getMentionsTimeline(['count' => 20, 'format' => 'array']);  
        $getTimelines = Twitter::getUserTimeline(['count' => 20, 'format' => 'array']);
        $getDatas = array_merge($getMentions, $getTimelines);
        // dd($getDatas);
        // $contents = Content::where('category', 'Information')->where('active', 1)->get();
        $banners = Content::where('category', 'Banner')->where('active', 1)->where('type_content', 'gambar')->get();
        $videos = Content::where('category', 'Video')->where('active', 1)->where('type_content', 'video')->get();
        $quotes = Content::whereIn('category', ['Quote', 'Information'])->where('active', 1)->get();
        return view('welcome', compact('banners', 'quotes', 'getDatas', 'videos'));
    }

    public function logout(){
        auth()->logout();
        return redirect('/');
    }
}
