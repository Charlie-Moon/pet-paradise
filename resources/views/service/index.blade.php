@extends('layout.index')

@section('styles')
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css">
@endsection

@section('content')
		<section class="list_posts pt-4">
			<div class="container">
				<h4 class="text-center py-4 text-3xl">Our Services</h4>
				<div class="row row-cols-1 row-cols-md-4 g-4">
					@foreach ($posts as $post)
						@include('partials.post', ['post' => $post ])
					@endforeach
				</div>
				{{ $posts->links() }}
			</div>
		</section>
@endsection