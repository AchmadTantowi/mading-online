<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Content;
use App\ImageContent;
use DB;
use Intervention\Image\ImageManagerStatic as Image;

class ContentController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $contents = Content::where('active', 1)->get();
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

    public function edit($id){
        $contents = Content::where('id', $id)->first();
        return view('admin.content.edit', compact('contents'));
    }

    public function updateContent($id, Request $request){
        // dd($request->get('status'));
        $image = $request->file('filename');
        $content = Content::find($id);
        $content->title = $request->get('title');
        $content->category = $request->get('category');
        if($request->get('status') == 'Active'){
            DB::table('contents')
            ->where('type_content', 'video')
            ->update(['active' => 0]);
            $content->active = 1;
        }
        if($content->category == 'Banner' || $content->category == 'Video'){
            if(!is_null($image)){
                $ext = $image->getClientOriginalExtension();
                $name = $image->getClientOriginalName();
                $content->image = $name;
                if($ext == 'jpeg' || $ext == 'png' || $ext == 'jpg'){
                    $content->type_content = 'gambar';
                    $image_resize = Image::make($image->getRealPath());              
                    $image_resize->resize(500, 300);
                    $image_resize->save(public_path('images/' .$name));
                } else {
                    
                    $content->type_content = 'video';
                    $image->move(public_path().'/images/', $name);
                }
                
                // $image->move(public_path().'/images/', $name);
            }
        } else {
            $content->content = $request->get('content');
        }
        $content->save();
        alert()->success('Updated','Successfully');
        return redirect('/admin/content');
    }

    public function saveContent(Request $request)
    {
        $image = $request->file('filename');
        if(is_null($image)){
            alert()->info('Failed','Ukuran file terlalu besar');
            return redirect('/admin/content');
        } else {
            // dd($image);
            $category = $request->get('category');
            

           

            DB::beginTransaction();
            try{

                if($category == 'Banner' || $category == 'Video'){
                    $ext = $image->getClientOriginalExtension();
                    // dd($ext);
                    $name = $image->getClientOriginalName();

                    $content = new Content;
                    $content->title = $request->get('title');
                    $content->category = $category;
                    $content->image = $name;
                    if($ext == 'jpeg' || $ext == 'png' || $ext == 'jpg'){
                        $content->type_content = 'gambar';
                        $image_resize = Image::make($image->getRealPath());              
                        $image_resize->resize(500, 300);
                        $image_resize->save(public_path('images/' .$name));
                    } else {
                        DB::table('contents')
                        ->where('type_content', 'video')
                        ->update(['active' => 0]);
                        $content->type_content = 'video';
                        $image->move(public_path().'images/', $name);
                    }
                    $content->active = 1;
                    $content->save();
                    // $image->move('mading-online/public/images/', $name);
                    
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
                
    }

    public function viewContent($id){
        $getContent = Content::where('id', $id)->first();
        return view('information', compact('getContent'));
    }

}
