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

    public function delete($id){
        $content = Content::find($id);
        $content->delete();
        if($content){
            alert()->success('Deleted','Successfully');
            return redirect('/admin/content');
        }
    }

    public function saveContent(Request $request)
    {
        $category = $request->get('category');
        $image = $request->file('filename');

        $this->validate($request, [
            'title' => 'required',
            // 'filename' => 'required',
            // 'filename.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
            'filename.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        

        DB::beginTransaction();
        try{

            if($category == 'Banner'){
                $ext = $image->getClientOriginalExtension();
                // dd($ext);
                $name = $image->getClientOriginalName();

                $content = new Content;
                $content->title = $request->get('title');
                $content->category = $category;
                $content->image = $name;
                if($ext == 'jpeg' || $ext == 'png' || $ext == 'jpg'){
                    $content->type_content = 'gambar';
                } else {
                    $content->type_content = 'video';
                }
                $content->active = 1;
                $content->save();
                $image->move(public_path().'/images/', $name);
                
            } else {
                $content = new Content;
                $content->title = $request->get('title');
                $content->category = $category;
                $content->content = $request->get('content');
                $content->active = 1;
                $content->save();
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
