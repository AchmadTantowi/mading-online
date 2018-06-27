<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Content;

class ContentController extends Controller
{
    
    public function __construct()
    {
        // $this->middleware('auth');
    }

    public function index()
    {
        $contents = Content::get();
        return view('admin.content.index', compact('contents'));
    }

    public function add(){
        
        return view('admin.content.add');
    }

    public function saveContent(Request $request)
    {
        $content = Content::create([
            'title' => $request->get('title'),
            'content' => $request->get('content')
          ]);
        if($content){
            alert()->success('Success','Saved');
            return redirect('/admin/content');
        }
    }

    public function viewContent($id){
        $getContent = Content::where('id', $id)->first();
        return view('information', compact('getContent'));
    }

}
