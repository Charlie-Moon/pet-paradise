@extends('layout.index')

@section('content')

<section class="search_page">
	<div class="container">
		<div class="row row-cols-1 row-cols-md-4 g-4">
				@foreach ($posts as $post)
					<div class="col">
						<div class="card">
							<a href="/services/{{ $post->slug }}" class="ratio ratio-16x9">
								<img src="{{ appEnvUrl('storage/'.$post->image) }}" class="card-img-top" alt="...">
							</a>
							<div class="card-body">
								<h5 class="card-title">
								<a href="/services/{{ $post->slug }}" class="text-decoration-none">	{{ $post->title }}</a>
								</h5>
								<p class="card-text">
									{{ $post->excerpt }}
								</p>
							</div>
						</div>
					</div>
				@endforeach

				@foreach ($products as $product)
				<div class="col">
					<div class="card">
						<a href="/products/{{ $product->slug }}" class="ratio ratio-16x9">
							<img src="{{ appEnvUrl('storage/'.$product->image) }}" class="{{ $product->title }}" alt="...">
						</a>
						<div class="card-body">
							<h5 class="card-title">
								<a href="/products/{{ $product->slug }}" class="text-decoration-none">{{ $product->title }}</a>
							</h5>
							<p class="card-text">
								{{ $product->excerpt}}
							</p>
						</div>
					</div>
				</div>
				@endforeach
		
		</div>
	</div>
</section>
		
@endsection