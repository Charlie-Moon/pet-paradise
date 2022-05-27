@extends('layout.index')

@section('title', '-' . $page->title)

@section('content')
<div class="page_detail">
	<div class="ratio">
		<img src="{{ appEnvUrl('storage/'.$page->image) }}" alt="{{ $page->title }}">
		<h4 class="page__title text-center">{{ $page->title }}</h4>
	</div>
	<div class="container">
		<p>
			{!! $page->body !!}
		</p>
	</div>
</div>
@endsection