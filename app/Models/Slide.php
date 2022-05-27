<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slide extends Model
{
	use HasFactory;
	public static function findbySlug($slug) {
		return static::where('slug', $slug)->first();
}
}
