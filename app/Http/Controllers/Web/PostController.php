<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;

use App\Models\Post;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::paginate(8);
        return view('service.index', ['posts' => $posts]);
    }
    public function detail($slug) {
        $post = Post::findbySlug($slug);
        return view('service.detail', ['post' => $post]);
    }
}
