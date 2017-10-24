@extends('layouts.master')
@section('content')
<div class="container padcont">
    <h5>Реестр членов СРО НП «МАПЭБ» по состоянию на 01.09.2014</h5>
    <h5>Действующие члены</h5>
    <div class="row" style="    padding: 5px 0 0px 0 !important;">
        <div class="col-sm-1 tabbord">
            
            Рег.№
        </div>
        <div class="col-sm-3 tabbord">
            Свидетельства о членстве
            <div class="row" style="    padding: 5px 0 0px 0 !important;height: 100%;    max-height: 170px;">
                <div class="col tabbord">
                    <p>Номер</p><br>
                </div>
                <div class="col tabbord">
                    Дата
                </div>
            </div>
        </div>
        <div class="col-sm-5 tabbord">
            Наименование, дата гос.регистрации, государственный регистрационный номер, место нахождения, номера телефонов, ИНН, Ф.И.О. и должность руководителя
        </div>
        <div class="col-sm-1 tabbord">
            Размер взноса <br> в компенсационный <br> фонд, руб.
        </div>
        <div class="col-sm-2 tabbord">
            Иные сведения
        </div>
    </div>
    @foreach ($tb as $t)
    <div class="row" style="    padding: 0;">
        <div class="col-sm-1 tabbord ddf">
            
          
        </div>
        <div class="col-sm-3 tabbord">
            <div class="row" style="    padding: 0;     height: 100%;">
                <div class="col tabbord">
                    <p>{{$t->num}}</p><br>
                </div>
                <div class="col tabbord">
                    <p>{{$t->data}}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5 tabbord">
            <p>{{$t->im}}</p>
        </div>
        <div class="col-sm-1 tabbord">
            <p>{{$t->vznos}}</p>
        </div>
        <div class="col-sm-2 tabbord">
            <p>{{$t->sved}}</p>
        </div>
    </div>
    @endforeach
</div>

<div class="container padcont">
    <h5>Выбывшие члены</h5>
    <div class="row" style="    padding: 5px 0 0px 0 !important;">
        <div class="col-sm-1 tabbord">
            
            NN п/п
        </div>
        <div class="col-sm-3 tabbord">
            Свидетельства о членстве
            <div class="row" style="    padding: 5px 0 0px 0 !important;height: 100%;        max-height: 121px;">
                <div class="col tabbord">
                    <p>Номер</p><br>
                </div>
                <div class="col tabbord">
                    Дата
                </div>
            </div>
        </div>
        <div class="col-sm-5 tabbord">
            Наименование, дата гос.регистрации, государственный регистрационный номер, место нахождения, номера телефонов, ИНН, Ф.И.О. и должность руководителя
        </div>
        <div class="col-sm-1 tabbord">
            Дата выхода из СРО НП «МАПЭБ»
        </div>
        <div class="col-sm-2 tabbord">
            Основания для прекращения членства в СРО НП «МАПЭБ»
        </div>
    </div>
    @foreach ($os as $o)
    <div class="row" style="    padding: 0;">
        <div class="col-sm-1 tabbord ddz">
            
          
        </div>
        <div class="col-sm-3 tabbord">
            <div class="row" style="    padding: 0;     height: 100%;">
                <div class="col tabbord">
                    <p>{{$o->num}}</p><br>
                </div>
                <div class="col tabbord">
                    <p>{{$o->date}}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5 tabbord">
            <p>{{$o->inf}}</p>
        </div>
        <div class="col-sm-1 tabbord">
            <p>{{$o->date_out}}</p>
        </div>
        <div class="col-sm-2 tabbord">
            <p>{{$o->osn}}</p>
        </div>
    </div>
    @endforeach
</div>

@endsection