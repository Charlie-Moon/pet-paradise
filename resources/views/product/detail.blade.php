@extends('layout.index')

@section('title', '-' . $product->title )  
	
@section('content')
	<div class="post_detail">
		<div class="ratio">
			<img src="{{ appEnvUrl('storage/'.$product->image) }}" alt="{{ $product->title }}">
			<h4 class="post_title text-center"><span>{{ $product->title }}</span></h4>
		</div>
		<div class="container">
			<p>
				{!! $product->description !!}
			</p>
		</div>
	</div>
@endsection