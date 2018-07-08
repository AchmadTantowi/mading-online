<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Content;
use App\ImageContent;
use DB;

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
        $this->validate($request, [
            'title' => 'required',
            'filename' => 'required',
            'filename.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        DB::beginTransaction();
        try{
            $content = new Content;
            $content->title = $request->get('title');
            $content->content = $request->get('content');
            $content->save();

            foreach($request->file('filename') as $image)
            {
                $name = $image->getClientOriginalName();

                $imageContent = new ImageContent;
                $imageContent->content_id = $content->id;
                $imageContent->image = $name;
                $imageContent->save();
                // dump($name);
                $image->move(public_path().'/images/', $name);
            }

            DB::commit();
       
            alert()->success('Success','Successfully');
            return redirect('/admin/content');
        }
        catch(QueryException $e){
            DB::rollback();
            alert()->error('Failed','Not Saved');
            return redirect('/admin/content');
        }    
    }

    public function viewContent($id){
        $getContent = Content::where('id', $id)->first();
        return view('information', compact('getContent'));
    }

}
