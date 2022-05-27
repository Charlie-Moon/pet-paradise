<?php

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Product;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::paginate(8);
        return view('product.index', ['products' => $products]);
    }
    public function detail($slug) {
        $product = Product::findbySlug($slug);
        return view('product.detail', ['product' => $product]);
    }
}
