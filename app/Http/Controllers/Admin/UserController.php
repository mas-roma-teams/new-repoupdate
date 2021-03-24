<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $user = User::All();
        // dd($user);
        if($request->ajax()){
            return datatables()->of($user)
            ->addColumn('action', function($data){
                $button = '<a href="user/'.$data->id.'/edit" data-toggle="tooltip" data-original-title="Edit" class="edit btn btn-info edit-post"> Edit</a>';
                $button .= '&nbsp;&nbsp;';
                $button .= '<button type="button" name="delete" id="'.$data->id.'" class="delete btn btn-danger "> Delete</button>';
                return $button;
            })
            ->rawColumns(['action'])
            ->addIndexColumn()
            ->make(true);
        }

        return view('user.index');
    }

    public function create()
    {
        return view('user.add');
    }

    public function store(Request $request)
    {
        $messages = [
            'required' => 'Kolom Wajib diisi!',
        ];

        $this->validate($request, [
            'name' => 'required',
            'photo_profile' => 'required|mimes:jpg,jpeg,png|max:20000',
            'password' => 'required',
            'email' => 'required'
        ], $messages);

        $new_admin = new User;
        $new_admin->name = $request->get('name');
        $new_admin->password = Hash::make($request->get('password'));

        if($request->file('photo_profile')){
            $photo_profile = $request->file('photo_profile')->store('photo_profile', 'public');
        }

        $new_admin->photo_profile = $photo_profile;
        $new_admin->email = $request->get('email');

        $new_admin->save();
        if ($new_admin) {
            //redirect dengan pesan sukses
            return redirect()->route('admin.user.index')->with(['success' => 'Data Berhasil Disimpan!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('admin.user.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('user.edit', compact('admin'));
    }

    public function update(Request $request, $id)
    {
        $messages = [
            'required' => 'Kolom Wajib diisi!',
        ];

        $this->validate($request, [
            'name' => 'required',
            //'photo_vendor' => 'required|mimes:jpg,jpeg,png|max:20000',
            'email' => 'required',

        ], $messages);
        $user = User::findOrFail($id);
        $user->name = $request->get('name');
        $user->email = $request->get('email');
        if($request->file('photo_profile')){
            if($user->photo_profile && file_exists(storage_path('app/public/' .$user->photo_profile))){
                \Storage::delete('public/'. $user->photo_profile);
            }
            $path = $request->file('photo_profile')->store('photo_profle', 'public');
            $user->photo_profile = $path;
        }else if($request->get('photo_profile_') == 1){
            if($user->photo_profile && file_exists(storage_path('app/public/' .$user->photo_profle))){
                \Storage::delete('public/'. $user->photo_profile);
            }
            $user->photo_profile = NULL;
        }

        $user->save();
        if ($user) {
            //redirect dengan pesan sukses
            return redirect()->route('admin.user.index')->with(['success' => 'Data Berhasil Diupdate!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('admin.user.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }


    public function destroy($id)
    {
        // echo $id; exit;
        $user = User::where('id',$id)->delete();

        if ($user) {
            //redirect dengan pesan sukses
            return redirect()->route('admin.user.index')->with(['success' => 'Data Berhasil Didelete!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('admin.user.index')->with(['error' => 'Data Gagal Didelete!']);
        }
    }
}
