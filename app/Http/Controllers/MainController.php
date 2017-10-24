<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Reestr;
use App\Retable;
use App\Vst;
use App\Pol;
use App\Usl1;
use App\Usl2;
use App\Usl3;
use App\Usl4;
use App\Out;
class MainController extends Controller
{
    public function main(){
        
        $rs = Reestr::latest()->get();
        $vs = Vst::latest()->get();
        $ps = Pol::latest()->get();
        
        return view('pages.main',compact('rs','vs','ps'));
    }
    
    public function reestr(){
        $tb = Retable::latest()->get();

        $os = Out::latest()->get();

        return view('pages.reestr',compact('tb','os'));
    }
    
    public function usl1(){
        $us = Usl1::latest()->get();
        return view('pages.usl1', compact('us'));
    }
    public function usl2(){
        $us = Usl2::latest()->get();
        return view('pages.usl2',compact('us'));
    }
    public function usl3(){
        $us = Usl3::latest()->get();
        return view('pages.usl3',compact('us'));
    }
    public function usl4(){
        $us = Usl4::latest()->get();
        return view('pages.usl4',compact('us'));
    }

}
