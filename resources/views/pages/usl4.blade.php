@extends('layouts.master')
@section('content')
@foreach ($us as $u)
<div class="container" style="padding-top:200px;">
    <div class="row">
        <h3>{{ $u->title }}</h3>
        {!! $u->body !!}
    </div>
       <div class="row d-flex justify-content-center">
        <div class="jj">
         <div class="reestr">
       
          <div class="fileup">
          <div class="icon file"></div>
          <a href="/assets/Uslugi.docx" download>Ссылка на файл</a>
    </div>
    </div>
    </div>
</div>
</div>

@endforeach
@endsection