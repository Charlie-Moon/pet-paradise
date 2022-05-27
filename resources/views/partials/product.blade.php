<div class="col d-flex flex-column">
	<div class="card border-0 shadow">
			<a href="/products/{{ $product->slug }}" class="text-decoration-none ratio ratio-16x9">
				<img src="{{ appEnvUrl('storage/'.$product->image) }}" class="card-img-top" alt="...">
			</a>
			<div class="card-body">
				<h5 class="card-title">
					<a href="/products/{{ $product->slug }}">{{ $product->title }}</a>
				</h5>
				<p class="card-text">{{ $product->excerpt }}</p>
			</div>
	
	</div>
</div>