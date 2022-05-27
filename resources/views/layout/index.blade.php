<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        @yield('meta')

        <title>{{Voyager::setting('site.title');}}</title>
        <meta type="description" content="{{Voyager::setting('site.description')}}">

        <link rel="shortcut icon" href="/img/bootstrap-brands.svg" type="image/x-icon">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="/css/app.css">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        @yield('styles')

    </head>
    <body>
        @include('partials.header')

        <main class="mb-4">

            @yield('content')
        
        </main>
        
	    @include('partials.footer')

        <script src="/js/app.js"></script>

        @yield('scripts')
    </body>
    
</html>