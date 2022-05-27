@extends('layout.index')

{{-- @section('title', '-' . $post->title )   --}}
		

@section('content')
	<div class="post_detail">
		<div class="ratio">
			<img src="{{ appEnvUrl('storage/'.$post->image) }}" alt="{{ $post->title }}">
			<h4 class="post_title text-center">{{ $post->title }}</h4>
		</div>
		<div class="container">
			<p>
				{!! $post->body !!}
			</p>
		</div>
	</div>
@endsection