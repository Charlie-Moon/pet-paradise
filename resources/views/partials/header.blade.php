<header class="sticky-top bg-white shadow">
	<nav class="navbar navbar-expand-lg container py-lg-0">
			<div class="container-fluid">
					<a class="navbar-brand py-0" href="{{ url('/')}}">
							<img src="{{ Voyager::image(setting('site.logo')) }}" height="60px" alt="Site Logo">
					</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
							<span class="navbar-toggler-icon"></span>
					</button>
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0 me-3 d-none d-lg-flex">
						{!! menu('main', 'bootstrap') !!}
					</ul>
					<form action="/search" class="d-none d-md-flex" method="get" role="search">
						<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
						<button class="btn btn-outline-primary" type="submit">Search</button>
					</form>
			</div>
	</nav>
</header>

<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Offcanvas</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
		{!! menu('main', 'bootstrap') !!}
		<form action="/search" class="d-flex mt-4" method="get" role="search">
			<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
			<button class="btn btn-outline-primary" type="submit">Search</button>
		</form>
  </div>
</div>
