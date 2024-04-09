<?php
// app/Http/Controllers/CartController.php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Cart;

class CartController extends Controller
{
    public function index()
    {
        $carts = Cart::with('details')->get();

        $formattedCarts = [];
        
        foreach ($carts as $cart) {
            $total = 0;
            $discountedTotal = 0;
            $totalProducts = 0;
            $totalQuantity = 0;
            $products = [];
            
            foreach ($cart->details as $detail) {
                $total += $detail->total;
                $discountedTotal += $detail->discountedPrice ?? $detail->total;
                $totalQuantity += $detail->quantity;
                
                $products[] = [
                    'id' => $detail->product_id,
                    'title' => $detail->title,
                    'price' => $detail->price,
                    'quantity' => $detail->quantity,
                    'total' => $detail->total,
                    'discountPercentage' => $detail->discountPercentage,
                    'discountedPrice' => $detail->discountedPrice,
                    'thumbnail' => $detail->thumbnail,
                ];

                $totalProducts++;
            }
            
            $formattedCarts[] = [
                'id' => $cart->id,
                'products' => $products,
                'total' => number_format($total, 2),
                'discountedTotal' => number_format($discountedTotal, 2),
                'userId' => $cart->user_id,
                'totalProducts' => $totalProducts,
                'totalQuantity' => $totalQuantity,
            ];
        }

        // Add pagination data if needed
        $response = [
            'carts' => $formattedCarts,
            'total' => count($formattedCarts), // Total number of carts
            'skip' => 0, // You may adjust this based on pagination
            'limit' => 20 // You may adjust this based on pagination
        ];

        return response()->json($response);
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
        $cart = Cart::create($request->all());
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
