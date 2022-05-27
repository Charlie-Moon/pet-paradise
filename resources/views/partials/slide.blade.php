<div class="carousel-item {{ $index === 0 ? 'active' : '' }}">
	<div class="ratio ratio-21x9">
		<img src="{{ appEnvUrl('storage/'.$slide->image) }}" alt="...">
	</div>
	<div class="carousel-caption d-none d-md-block">
		<h5>{{ $slide->title }}</h5>
		<p>{{ $slide->description }}</p>
	</div>
</div>