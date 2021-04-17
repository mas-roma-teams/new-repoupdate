<?php
  
namespace App\Http\Controllers;
  
use Illuminate\Http\Request;
use Socialite;
use Exception;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
  
class GoogleController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }
        
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function handleGoogleCallback()
    {
        try {
      
            $user = Socialite::driver('google')->user();
       
            $finduser = User::where('google_id', $user->id)->first();
       
            if($finduser){
       
                Auth::login($finduser);
      
                return redirect()->intended('dashboard');
       
            }else{
                $newUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'google_id'=> $user->id,
                    'no_tlp' => $user->no_tlp ?? 0,
                    'vendor_status' => $user->vendor_status ?? 0,
                    'password' => encrypt('123456dummy')
                ]);
      
                Auth::login($newUser);
      
                return redirect()->intended('/');
            }
      
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
    // public function handleGoogleCallback()
    // {
    //     $user = Socialite::driver('google')->user();

    //     $this->_registerOrLoginUser($user);

    //     // Return home after login
    //     return redirect()->route('home');
    // }
    // protected function _registerOrLoginUser($data)
    // {
    //     dd($data);
    //     $user = User::where('email', '=', $data->email)->first();
    //     if (!$user) {
    //         $user = new User();
    //         $user->name = $data->name;
    //         $user->email = $data->email;
    //         $user->no_tlp = $data->no_tlp ?? 0;
    //         $user->vendor_status = $data->vendor_status ?? 0;
    //          'password' => encrypt('123456dummy')
    //         // $user->provider_id = $data->id;
    //         // $user->avatar = $data->avatar;
    //         $user->save();
    //     }

    //     Auth::login($user);
    // }

}