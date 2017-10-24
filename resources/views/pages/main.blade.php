@extends('layouts.master')
@section('content')

<div class="example-classname">

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

  <div class="carousel-inner">
    <div class="carousel-item active">
  <img src="assets/img/bg.jpg">
  <div class="carousel-caption d-md-block">
    <h1>Саморегулируемая организация «Межрегиональная ассоциация по промышленной и экологической безопасности»</h1>
  </div>
</div>

    
  </div>
</div>
</div>
<div class="example-classname" id="reestr">
    @foreach($rs as $r)
    <div class="container">
            <h2 class="text-center">Реестр членов</h2>
            <div class="row" style="padding:0;">
    <div class="col"><img class="imgreestr1" src="/storage/{{ $r->img }}"></div>
    <div class="col" style="text-align:justify;"><p>{!! $r->body !!}
  </p>
  <div class="jj">
         <div class="reestr">
          <div class="icon table"></div>
          <a href="/retable">Ссылка на реестр</a>
          </div>
          <div class="fileup">
          <div class="icon file"></div>
           <a class="filelink" href="/storage/reestrs{{ $r->file}}" download>
Загрузить файл                                                        </a>
    </div>
    </div>
    </div>
    
    </div>
</div>
@endforeach
</div>
<div class="example-classname back3" id="vst">
        @foreach($vs as $v)

    <div class="container">
            <h2 class="text-center">{{$v->title}}</h2>
            <div class="row">
                 <div class="col" style="text-align:justify;"><p >{!!$v->body!!}
  </p>
  <div class="jj">
     
          <div class="fileup">
          <div class="icon file" style="background:white;"></div>
          <a class="filelink2" href="/assets/Polozhenie_o_chlenstve_v_SRO_NP_MAPEB.pdf" download>
Загрузить файл                                                        </a>
          
    </div>
    </div>
    </div>
    <div class="col" style="    text-align: center;"><img src="assets/img/bulb.png"></div>
   
    
    </div>
</div>
@endforeach
</div>
<div class="example-classname back3" id="opl">
    <div class="container">
            <h2 class="text-center">Положение об уплате взносов</h2>
            <div class="row">
    <div class="col"><img src="assets/img/plant_shadow1.png"></div>
    <div class="col"><p>В Партнерстве устанавливаются следующие виды членских взносов: 

· вступительный членский взнос; <br>

· регулярные ежемесячные членские взносы; <br>

· целевые членские взносы. <br>
  </p>
  <div class="jj">
 
          <div class="fileup">
          <div class="icon file"></div>
          <a href="/assets/Polozhenie_o_razmere_chlenskikh_vznosov.doc" download style="    color: white;">Ссылка на файл</a>
    </div>
    </div>
    </div>
    
    </div>
</div>
</div>
<section >
<div class="example-classname back7" id="usl">
    <div class="container">
            <h2 class="text-center">Консалтинговые услуги</h2>
            <div class="row">
    <div class="col"><div class="card">
  <div class="card-body">
        <div class="card-img-top buh" src="..." ></div>

    <h5 class="card-title">КОНСУЛЬТАЦИИ И РАЗЪЯСНЕНИЯ ПО СИСТЕМЕ УПРАВЛЕНИЯ ПРОМЫШЛЕННОЙ
БЕЗОПАСНОСТЬЮ</h5>
    <a href="/usl1" >Подробнее</a>

  </div>
</div></div>
    <div class="col">
  <div class="card" >
  <div class="card-body">
      <div class="card-img-top str" src="..." ></div>
    <h5 class="card-title">КОНСУЛЬТАЦИИ ЭКСПЛУАТИРУЮЩИХ ОРГАНИЗАЦИЙ В ОБЛАСТИ ПРОМБЕЗОПАСНОСТИ</h5>
    <a href="/usl2" >Подробнее</a>
  </div>
</div>
 
    </div>
    <div class="col"><div class="card" >
  <div class="card-body">
      
      <div class="card-img-top ur" src="..." ></div>
    <h5 class="card-title">КОНСУЛЬТАЦИИ ПО ОФОРМЛЕНИЮ И УТВЕРЖДЕНИЮ ДОКУМЕНТОВ ЭКСПЛУАТИРУЮЩИХ
ОРГАНИЗАЦИЙ И ИХ УТВЕРЖДЕНИЮ</h5>
     <a href="/usl3" >Подробнее</a>
  </div>
</div></div>
    <div class="col"><div class="card" >
  <div class="card-body">
      <div class="card-img-top man" src="..." ></div>
    <h5 class="card-title">СЕРТИФИКАЦИЯ <br> СИСТЕМ <br> МЕНЕДЖМЕНТА <br> БЕЗОПАСНОСТИ <br> ПИЩЕВОЙ <br> ПРОДУКЦИИ</h5>
    <a href="/usl4" >Подробнее</a>
  </div>
</div></div>
    
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
</section>



@endsection
