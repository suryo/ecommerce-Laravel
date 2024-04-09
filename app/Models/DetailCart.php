<?php

// app/Models/DetailCart.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetailCart extends Model
{
    protected $fillable = [
        'cart_id', 'product_id', 'quantity', 'total', 'discount_percentage', 'discounted_price', 'thumbnail'
    ];

    public function cart()
    {
        return $this->belongsTo(Cart::class);
    }
}
