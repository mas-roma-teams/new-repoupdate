<?php

namespace App\Actions\Fortify;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;
use Illuminate\Support\Str;
use App\Helpers\Helper;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
        dd("halo");

        Validator::make($input, [
            'name' => ['required', 'string', 'max:255'],
            'no_tlp' => ['required', 'string', 'max:20'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => $this->passwordRules(),
            'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['required', 'accepted'] : '',
        ])->validate();

        // return User::create([
        //     'kode_referal' = Helper::IDGenerator(new User, 'kode_referal',5 ,'ALPST');
        //     'name' => $input['name'],
        //     'email' => $input['email'],
        //     'no_tlp' => $input['no_tlp'],
        //     var_dump($input['no_tlp']);exit;
        //     'password' => Hash::make($input['password']),
        // ]);

        $config = ['table' => 'users', 'length'=>10, 'prefix' => 'ALAPESTA-'];
        $name = $request->name;
        $kode =  "alapesta".mt_srand(5);
        dd($kode);
        $q = new User;
        $q->kode_referal = $kode;

        $q->name = $name;
        // $q->name = $request->get('name');
        $q->email = $request->get('email');
        $q->no_tlp = $request->get('no_tlp');
        $save =  $q->save();

        
    }
}
