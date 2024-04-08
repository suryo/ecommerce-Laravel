<?php

// app/Http/Controllers/CategoryProductController.php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CategoryProduct;
use App\Models\Product;

class CategoryProductController extends Controller
{
    public function index()
    {
        $categories = CategoryProduct::all();
        return response()->json($categories);
    }

    public function productsByCategory($categoryName)
    {
        $category = CategoryProduct::where('name', $categoryName)->first();

        if (!$category) {
            return response()->json(['message' => 'Category not found'], 404);
        }

        $products = Product::where('category', $categoryName)->get();
        return response()->json($products);
    }
}
