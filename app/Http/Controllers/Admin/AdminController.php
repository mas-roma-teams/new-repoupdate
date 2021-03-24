<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function index(Request $request)
    {
        $admin = Admin::All();
        // dd($admin);
        if($request->ajax()){
            return datatables()->of($admin)
            ->addColumn('action', function($data){
                $button = '<a href="admin/'.$data->id.'/edit" data-toggle="tooltip" data-original-title="Edit" class="edit btn btn-info edit-post"> Edit</a>';
                $button .= '&nbsp;&nbsp;';
                $button .= '<button type="button" name="delete" id="'.$data->id.'" class="delete btn btn-danger "> Delete</button>';
                return $button;
            })
            ->rawColumns(['action'])
            ->addIndexColumn()
            ->make(true);
        }

        return view('admin.index');
    }

    public function create()
    {
        return view('admin.add');
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

        $new_admin = new Admin;
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
            return redirect()->route('admin.admin.index')->with(['success' => 'Data Berhasil Disimpan!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('admin.admin.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit($id)
    {
        $admin = Admin::findOrFail($id);
        return view('admin.edit', compact('admin'));
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
        $admin = Admin::findOrFail($id);
        $admin->name = $request->get('name');
        $admin->email = $request->get('email');
        if($request->file('photo_profile')){
            if($admin->photo_profile && file_exists(storage_path('app/public/' .$admin->photo_profile))){
                \Storage::delete('public/'. $admin->photo_profile);
            }
            $path = $request->file('photo_profile')->store('photo_profle', 'public');
            $admin->photo_profile = $path;
        }else if($request->get('photo_profile_') == 1){
            if($admin->photo_profile && file_exists(storage_path('app/public/' .$admin->photo_profle))){
                \Storage::delete('public/'. $admin->photo_profile);
            }
            $admin->photo_profile = NULL;
        }

        $admin->save();
        if ($admin) {
            //redirect dengan pesan sukses
            return redirect()->route('admin.admin.index')->with(['success' => 'Data Berhasil Diupdate!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('admin.admin.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }


    public function destroy($id)
    {
        // echo $id; exit;
        $admin = Admin::where('id',$id)->delete();

        if ($admin) {
            //redirect dengan pesan sukses
            return redirect()->route('admin.admin.index')->with(['success' => 'Data Berhasil Didelete!']);
        } else {
            //redirect dengan pesan error
            return redirect()->route('admin.admin.index')->with(['error' => 'Data Gagal Didelete!']);
        }
    }
}
