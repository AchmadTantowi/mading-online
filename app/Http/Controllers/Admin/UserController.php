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
        $this->middleware('auth');
    }

    public function index()
    {
        // $users = User::get();
        $users = DB::table('users')
        ->select('users.id','users.name','users.email','social_twitter_accounts.provider')
        ->leftJoin('social_twitter_accounts','social_twitter_accounts.user_id','=','users.id')
        ->get();
        // dd()
        return view('admin.user.index', compact('users'));
    }

    public function add(){
        return view('admin.user.add');
    }

    public function edit($id){
        $user = User::where('id', $id)->first();
        return view('admin.user.edit', compact('user'));
    }

    public function update($id, Request $request){
        // dd($request->get('password'));
        $pass = $request->get('password');
        if(!is_null($pass)){
            $this->validate($request, [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255',
                'password' => 'required|string|min:6|confirmed',
            ]);
        } else {
            $this->validate($request, [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255',
            ]);
        }
        

        $user = User::find($id);
        $user->name = $request->get('name');
        $user->email = $request->get('email');
        if(!is_null($pass)){
            $user->password = bcrypt($request->get('password'));
        }
       
        $user->save();
        alert()->success('Updated','Successfully');
        return redirect('/admin/user');
    }

    public function save(Request $request){
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required|string|min:6|confirmed',
        ]);
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
