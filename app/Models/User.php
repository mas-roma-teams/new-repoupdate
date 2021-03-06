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

    public $incrementing = false;

    protected $table = "users";

    protected $fillable = [
        'name',
        'no_tlp',
        'email',
        'password',
        'city_id',
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
    public function negosiasi()
    {
        return $this->belongsTo(Negosiasi::class,'user_id');
    }

    public function transaksi(){
        return $this->hasMany(Transaksis::class);
    }

    public function provinsi()
    {
        return $this->belongsTo(IndoProv::class,'province_id');
    }

    public function kecamatan()
    {
        return $this->belongsTo(Kecamatan::class,'district_id');
    }

    public function kelurahan()
    {
        return $this->belongsTo(Kecamatan::class,'villages_id');
    }
    

    public function transaksis()
    {
        return $this->hasMany(Transaksis::class,'jasa_id');
    }
}
