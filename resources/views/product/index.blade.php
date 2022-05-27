@extends('layout.index')

@section('content')
<section class="list_products pt-4">
	<div class="container">
		<div class="row row-cols-1 row-cols-md-4 g-4">
			@foreach ($products as $product)
				@include('partials.product', ['product' => $product ])
			@endforeach
		</div>
		{{ $products->links() }}
	</div>
</section>
@endsection