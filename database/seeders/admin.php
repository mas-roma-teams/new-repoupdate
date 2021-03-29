<?php

namespace Database\Seeders;

use App\Models\Admin as ModelsAdmin;
use Illuminate\Database\Seeder;

class admin extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ModelsAdmin::create([
            'name'	=> "romadhon",
            'email'	=> "romadhon@gmail.com",
            'password'	=> bcrypt('password')
    ]);
    }
}
