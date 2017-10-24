<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <title>СРО</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/main.css">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Unicase:700|Open+Sans+Condensed:300|Poiret+One" rel="stylesheet">


  </head>
  <body>
    @include('layouts.nav')
@yield('content')
@include('layouts.footer')
@include('layouts.scripts')
    
  </body>
</html>
