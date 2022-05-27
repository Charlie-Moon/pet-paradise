@extends('layout.index')


@section('content')

<div class="hero-slider ratio ratio-21x9">
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
			<div class="carousel-indicators">

					@foreach ($slides as $index => $slide)

					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="{{ $index }}" class="{{ $index === 0 ? 'active' : '' }}" aria-current="true" aria-label="{{ $slide->title }}"></button>

					@endforeach

			</div>
			<div class="carousel-inner">

				@foreach ($slides as $index => $slide)

					@include('partials.slide', ['slide' => $slide, 'index' => $index ])

				@endforeach

			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
			</button>
	</div>
</div>


	<section class="intro bg-primary text-white py-5">
		<div class="container">
			<h2 class="section-title text-center"><q> {{ setting('site.site_intro') }} </q></h2>
		</div>
	</section>

	<!-- Products -->
	<section class="product-showcase py-5">
			<header>
					<h2 class="text-primary text-center mb-4"><a href="/products">Our Products</a></h2>
			</header>
			<div class="list_products">
				<div class="container">
					<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">
						@foreach ($products as $product)
							@include('partials.product', ['product' => $product ])
						@endforeach
					</div>
				</div>
				
			</div>
	</section>
	<section class="banner">

	</section>
	
@endsection