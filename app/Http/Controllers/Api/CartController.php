<?php
// app/Http/Controllers/CartController.php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Cart;
use App\Models\Product;

class CartController extends Controller
{
    public function index($userId)
    {
        $carts = Cart::where('user_id', $userId)->get();
        return response()->json(['carts' => $carts], 200);
    }

    public function show($id)
    {
        //$cart = Cart::findOrFail($id);
        $cart = Cart::with('details')->findOrFail($id);
        return response()->json($cart);
    }

    public function userCarts($userId)
    {
        $carts = Cart::where('user_id', $userId)->get();
        return response()->json($carts);
    }

    public function store(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'product_id' => 'required|exists:products,id',
            'quantity' => 'required|integer|min:1',
        ]);
    
        // Find the cart item for the user and product
        $cart = Cart::where('user_id', $request->user_id)
                    ->where('product_id', $request->product_id)
                    ->first();
    
        // Fetch product details based on product_id
        $product = Product::findOrFail($request->product_id);
    
        // Calculate discountedPrice if discountPercentage is provided
        $discountedPrice = ($product->price - ($product->price * $product->discount_percentage / 100)) * $request->quantity;
    
        // Calculate total
        $total = $product->price * $request->quantity;
    
        // If cart item exists, update it; otherwise, create a new one
        if ($cart) {
            $cart->update([
                'quantity' => $request->quantity,
                'total' => $total,
                'discountPercentage' => $product->discount_percentage ?? null,
                'discountedPrice' => $discountedPrice,
            ]);
        } else {
            // Create new cart item
            $cart = Cart::create([
                'user_id' => $request->user_id,
                'product_id' => $request->product_id,
                'title' => $product->title,
                'price' => $product->price,
                'quantity' => $request->quantity,
                'total' => $total,
                'discountPercentage' => $product->discount_percentage ?? null,
                'discountedPrice' => $discountedPrice,
                'thumbnail' => $product->thumbnail ?? null,
            ]);
        }
    
        return response()->json($cart, 201);
    }

    public function update(Request $request, $id)
    {
        $cart = Cart::findOrFail($id);
        $cart->update($request->all());
        return response()->json($cart, 200);
    }

    public function destroy($id)
    {
        Cart::findOrFail($id)->delete();
        return response()->json(['message' => 'Cart deleted successfully'], 200);
    }
}
