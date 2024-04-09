<?php

// app/Models/Cart.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $fillable = [
        'user_id', 'total', 'discounted_total', 'total_products', 'total_quantity'
    ];

    public function details()
    {
        return $this->hasMany(DetailCart::class);
    }
}
