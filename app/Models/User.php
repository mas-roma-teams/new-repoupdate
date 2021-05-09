<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;
// use App\Traits\Uuid;
// use Haruncpi\LaravelIdGenerator\IdGenerator;

class User extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;
    // use Uuid;
    // use IdGenerator;
    // use IdFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $table = "users";

    protected $fillable = [
        'name',
        'no_tlp',
        'email',
        'password',
        'kode_referal',
        'vendor_status',
        'photo_profile',
        'google_id',


    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = [
        'profile_photo_url',
    ];

    function image()
    {
        if ($this->image && file_exists(public_path('images/user/' . $this->image)))
            return asset('images/user/' . $this->image);
        else
            return asset('images/user.png');
    }

    // protected static function boot()
    // {
    //     parent::boot();
    //     static::creating(function ($model) {
    //         try {
    //             $model->uuid = Generator::uuid4()->toString();
    //         } catch (UnsatisfiedDependencyException $e) {
    //             abort(500, $e->getMessage());
    //         }
    //     });
    // }

    public function transaksi(){
        return $this->hasMany(Transaksis::class);
    }
}
