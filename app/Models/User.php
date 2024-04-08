<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'firstName',
        'lastName',
        'maidenName',
        'age',
        'gender',
        'email',
        'phone',
        'username',
        'password',
        'birthDate',
        'image',
        'bloodGroup',
        'height',
        'weight',
        'eyeColor',
        'hair',
        'domain',
        'ip',
        'address',
        'macAddress',
        'university',
        'bank',
        'company',
        'ein',
        'ssn',
        'userAgent',
        'crypto',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
        'hair' => 'json',
        'address' => 'json',
        'bank' => 'json',
        'company' => 'json',
        'crypto' => 'json',
    ];

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }
    
    public function getJWTCustomClaims()
    {
        return [];
    }
}
