<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Post;

class SearchController extends Controller
{
    public function index()
    {
        $search =  '%' .request()->search . '%'; 

        $posts = Post::where('title', 'LIKE',  $search)
                    ->orWhere('excerpt', 'LIKE',  $search)
                    ->orWhere('slug', 'LIKE',  $search)
                    ->orWhere('body', 'LIKE',  $search)
                    ->orderBy('created_at', 'desc')
                    ->paginate(8);

        $products = Product::where('title', 'LIKE',  $search)
                    ->orWhere('excerpt', 'LIKE',  $search)
                    ->orWhere('slug', 'LIKE',  $search)
                    ->orWhere('description', 'LIKE',  $search)
                    ->orderBy('created_at', 'desc')
                    ->paginate(8);

        $data = [
            'posts' => $posts,
            'products' => $products,
        ];

        return view('search.index', $data);
    }
}
