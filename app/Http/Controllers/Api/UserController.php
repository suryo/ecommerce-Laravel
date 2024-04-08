<?php
// app/Http/Controllers/UserController.php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();
        return response()->json($users);
    }

    public function authUser()
    {
        $user = auth()->user();
        return response()->json($user);
    }

    public function show($id)
    {
        $user = User::findOrFail($id);
        return response()->json($user);
    }

    public function search(Request $request)
    {
        $query = $request->input('q');
        $users = User::where('firstName', 'like', "%$query%")
            ->orWhere('lastName', 'like', "%$query%")
            ->get();
        return response()->json($users);
    }

    public function filter(Request $request)
    {
        // Implement filtering logic based on request parameters
        // Example: $users = User::where(...)->get();
        return response()->json($filteredUsers);
    }

    public function limitSkip(Request $request)
    {
        $limit = $request->input('limit');
        $skip = $request->input('skip');
        $users = User::take($limit)->skip($skip)->get();
        return response()->json($users);
    }

    public function userCarts($userId)
    {
        $user = User::findOrFail($userId);
        $carts = $user->carts;
        return response()->json($carts);
    }

    public function userPosts($userId)
    {
        $user = User::findOrFail($userId);
        $posts = $user->posts;
        return response()->json($posts);
    }

    public function userTodos($userId)
    {
        $user = User::findOrFail($userId);
        $todos = $user->todos;
        return response()->json($todos);
    }

    public function store(Request $request)
    {
        $user = User::create($request->all());
        return response()->json($user, 201);
    }

    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);
        $user->update($request->all());
        return response()->json($user, 200);
    }

    public function destroy($id)
    {
        User::findOrFail($id)->delete();
        return response()->json(['message' => 'User deleted successfully'], 200);
    }
}
