
@section('meta')
	<meta property="og:url"         content="{{ appEnvUrl($post->slug) }}" />
	<meta property="og:type"        content="article" />
	<meta property="og:title"       content="{{ $post->title }}" />
	<meta property="og:description" content="{{ $post->excerpt }}" />
	<meta property="og:image"       content="{{ utf8_decode(urldecode(url('storage/'.$post->image))) }}" />
		
@endsection

<div class="col">
	<div class="card">
		<a href="/services/{{ $post->slug }}">
			<img src="{{ appEnvUrl('storage/'.$post->image) }}" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">{{ $post->title }}</h5>
				<p class="card-text">{{ $post->excerpt }}</p>
			</div>
		</a>
	</div>
</div>