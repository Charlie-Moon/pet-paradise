<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Page;

class PageController extends Controller
{
    public function index($slug) {
       if( $page = Page::findBySlug($slug)) {
            return view('page.index', ['page' => $page]);
       }
        return abort(404);

    }
}
