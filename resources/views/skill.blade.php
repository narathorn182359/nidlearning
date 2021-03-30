@extends('layouts.appel')
@section('content')
    <section class="w3l-service-breadcrum">
        <div class="breadcrum-bg py-sm-5 py-4">
            <div class="container py-lg-3">
                <h2>ความรู้น่าสนใจ</h2>
                <p><a href="{{ url('/') }}">หน้าแรก</a> &nbsp; / &nbsp; ความรู้น่าสนใจ</p>
            </div>
        </div>
    </section>
    <section class="w3l-features-8">
        <!-- /features -->
            <div class="features py-5" id="services">
             <div class="container py-md-3">
                <div class="fea-gd-vv text-center row">
                        @foreach ($class as $item)
                        <div class="float-top col-lg-4 col-md-6">	
                               <a href="{{url('room/'.$item->id_sub)}}"><img src="{{url('images/'.$item->img_sub)}}" class="img-responsive" alt=""></a>
                               <div class="float-lt feature-gd">	
                                       <a href="{{url('room/'.$item->id_sub)}}">  <h3>{{$item->name_sub}}</h3>
                                           <p> {{$item->sub_title}} </p>
                                       </a>
                                       </div>
                       </div>
                        @endforeach			 
                  </div>  
             </div>
           </div>
       <!-- //features -->
 </section>




@endsection
