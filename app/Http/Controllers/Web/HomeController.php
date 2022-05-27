<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;

use App\Models\Slide;
use App\Models\Product;


class HomeController extends Controller
{
    public function index()
    {
        $slides = Slide::all();
        $products = Product::limit(3)->get();

        return view('index', ['slides' => $slides, 'products' => $products]);
    }
}
