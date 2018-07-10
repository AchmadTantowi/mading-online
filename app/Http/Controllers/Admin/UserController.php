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

    public function add(){
        return view('admin.user.add');
    }

    public function save(Request $request){
        $save = User::create([
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'password' => bcrypt($request->get('password')),
        ]);
        if($save){
            alert()->success('Success','Successfully');
            return redirect('/admin/user');
        }
    }

    public function delete($id){
        $user = User::find($id);
        $user->delete();
        if($user){
            alert()->success('Deleted','Successfully');
            return redirect('/admin/user');
        }
    }

}
