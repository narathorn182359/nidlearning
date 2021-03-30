@extends('layouts.appel')

@section('content')
<section class="w3l-main-slider" id="home">
    <!-- main-slider -->
    <div class="companies20-content">
      <div class="owl-one owl-carousel owl-theme">
        <div class="item">
          <li>
            <div class="slider-info banner-view bg bg2" data-selector=".bg.bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg mx-auto text-center">
                    <h5>การศึกษาที่ดีกว่าเพื่อโลกที่ดีกว่า</h5>
             {{--       <a class="btn btn-secondary btn-theme2 mt-md-5 mt-4" href="services.html">Read More</a> --}}
                  </div>
                  
                </div>
              </div>
            </div>
          </li>
        </div>
        <div class="item">
          <li>
            <div class="slider-info  banner-view banner-top1 bg bg2" data-selector=".bg.bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg mx-auto text-center">
                    <h5>การหาคำตอบเป็นหนทางที่ฉลาดกว่าการคาดเดา</h5>
                 {{--    <a class="btn btn-secondary btn-theme2 mt-md-5 mt-4" href="services.html">Read More</a> --}}
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
        <div class="item">
          <li>
            <div class="slider-info banner-view banner-top2 bg bg2" data-selector=".bg.bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg mx-auto text-center">
                    <h5>นวัตกรรม คือ สิ่งที่แยกผู้นำและผู้ตามออกจากกัน</h5>
           {{--         <a class="btn btn-secondary btn-theme2 mt-md-5 mt-4" href="services.html">Read More</a> --}}
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
        <div class="item">
          <li>
            <div class="slider-info banner-view banner-top3 bg bg2" data-selector=".bg.bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg mx-auto text-center">
                    <h5>แรงผลักดัน คือจุดเริ่มต้น และการทำจนเป็นนิสัย คือสิ่งที่ทำให้คุณไม่หยุดก้าวไปข้างหน้า</h5>
                  {{--   <a class="btn btn-secondary btn-theme2 mt-md-5 mt-4" href="services.html">Read More</a> --}}
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
      </div>
    </div>
  
  </div>
  
  
<script src="{{url('assets/js/owl.carousel.js')}}"></script>
    <!-- script for -->
    <script>
      $(document).ready(function () {
        $('.owl-one').owlCarousel({
          loop: true,
          margin: 0,
          nav: false,
          responsiveClass: true,
          autoplay: true,
          autoplayTimeout: 5000,
          autoplaySpeed: 1000,
          autoplayHoverPause: false,
          responsive: {
            0: {
              items: 1,
              nav: false
            },
            480: {
              items: 1,
              nav: false
            },
            667: {
              items: 1,
              nav: true
            },
            1000: {
              items: 1,
              nav: true
            }
          }
        })
      })
    </script>
    <!-- //script -->
    <!-- /main-slider -->
  </section>
  <section class="w3l-feature-3" id="features">
      <div class="grid top-bottom mb-lg-5 pb-lg-5">
          <div class="container">
              <div class="middle-section grid-column text-center">
                  <div class="three-grids-columns">
                      <span class="fa fa-laptop"></span>
                      <h4>วิชาที่คุณต้องเรียน</h4>
                      <p>เป็นรายวิชาที่ต้องเรียนที่ตรงกับสายงานของคุณ</p>
                      <a href="{{url('/class')}}" class="btn btn-secondary btn-theme3 mt-4">ดู</a>
                  </div>
                  <div class="three-grids-columns">
                      <span class="fa fa-users"></span>
                      <h4>ใครที่เรียนเหมือนคุณ</h4>
                      <p>ใครบ้างที่เรียนผลการทดสอบว่าเพื่อนของคุณได้คะแนนระดับไหน ?</p>
                      <a href="{{url('/')}}" class="btn btn-secondary btn-theme3 mt-4">ดู</a>
                  </div>
                  <div class="three-grids-columns">
                      <span class="fa fa-book"></span>
                      <h4>ความรู้ทั่วไป</h4>
                      <p>แหล่งเรียนรู้ที่คุณสนใจในชื่อวิตประจำวันที่คุณอยากรู้</p>
                      <a href="{{url('/skill')}}" class="btn btn-secondary btn-theme3 mt-4">ดู </a>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <!-- features-4 block -->
  <section class="w3l-index1" id="about">
      <div class="calltoaction-20  py-5 editContent">
          <div class="container py-md-3">
          
              <div class="calltoaction-20-content row">
                  <div class="column center-align-self col-lg-6 pr-lg-5">
                      <h5 class="editContent">ยินดีต้อนรับเข้าสู่ NID Learning</h5>
                      <p class="more-gap editContent">ประโยชน์ที่โดดเด่นอีกข้อหนึ่งคือเรื่องของความยืดหยุ่น ผู้สอนสามารถเข้าไปปรับปรุงเนื้อหาให้ทันสมัยได้เสมอและยังเข้าไปแก้ไขข้อมูลในเซิร์ฟเวอร์ได้ตลอดไม่ว่าอยู่ที่ใดก็ตาม หากมีข้อมูลใหม่ที่จำเป็นต้องอัพเดตก็ทำได้อย่างรวดเร็ว นอกจากนี้ผู้สอนยังใส่เกมหรือแบบทดสอบต่างๆ ลงไปในสื่อการสอนได้ด้วย เพื่อเพิ่มความสนุกสนานในการเรียนซึ่งจะช่วยสร้างประสบการณ์การเรียนรู้ที่ดีให้กับผู้เรียนจนอยากกลับมาเรียนเพิ่มเติมในเนื้อหาใหม่ๆ ต่อไป</p>
                          <p class="more-gap editContent">นอกจากนี้ e-Learning ยังช่วยลดค่าใช้จ่ายให้กับองค์กรด้วยการย้ายการเทรนนิ่งพนักงานไปไว้บนแพล็ตฟอร์มออนไลน์แทน โดยผู้เรียนสามารถเข้าไปเรียนได้ตามต้องการ และยังสามารถสื่อสารกับผู้อบรมได้ </p>
                  <a class="btn btn-secondary btn-theme2 mt-3" href="{{url('/classroom')}}">เข้าเรียน</a>
                  </div>
                  <div class="column ccont-left col-lg-6">
                      <img src="assets/images/g1.jpg" class="img-responsive" alt="">
                  </div>
              </div>
          </div>
      </div>
  </section>
  <!-- features-4 block -->
  
  <!--  form-12 -->
  <section class="w3l-form-12">
          <div class="form-12-content py-5" id="services">
              <div class="container py-md-3">
                  <div class="grid grid-column-2 py-md-5">
                          
                      <div class="column1">
                          <h4 class="tagline">Find your course</h4>
                          <p>Fill in below form to find your courses</p>
                              <form action="/" method="Get">
                                  <div class="">
                                      <input type="text" name="name" class="form-input" placeholder="Course Name">
                                  </div>
                                  <div class="">
                                      <select id="sel1">
                                          <option>Category</option>
                                          <option>Computer</option>
                                          <option>Science</option>
                                          <option>History</option>
                                          <option>Economics</option>
                                        </select>
                                  </div>
                                  
                                  
                                  <button type="submit" class="btn btn-secondary btn-theme2">Submit</button>
                              </form>
                          </div>
                          <div class="column2">
                          <div class="row">
                              <div class="col-md-3 col-sm-6 col-6">
                                  <a href="{{url('/')}}">
                                    <div class="courses-item">
                                      <span class="fa fa-male"></span>
                                      <p>Socioligy</p>
                                  </div></a>
                              </div>
                              <div class="col-md-3 col-sm-6 col-6">
                                  <a href="{{url('')}}"><div class="courses-item">
                                      <span class="fa fa-suitcase"></span>
                                      <p>Business</p>
                                  </div></a>
                              </div>
                              <div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-4">
                                  <a href="{{url('/')}}"><div class="courses-item">
                                      <span class="fa fa-code"></span>
                                      <p>Web Dev</p>
                                  </div></a>
                              </div>
                              <div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-4">
                                  <a href="{{url('/')}}"><div class="courses-item">
                                      <span class="fa fa-flask"></span>
                                      <p>Science</p>
                                  </div></a>
                              </div>
                              <div class="col-md-3 col-sm-6 col-6 mt-4">
                                  <a href="{{url('/')}}"><div class="courses-item mt-2">
                                      <span class="fa fa-money"></span>
                                      <p>Ecomomics</p>
                                  </div></a>
                              </div>
                              <div class="col-md-3 col-sm-6 col-6 mt-4">
                                  <a href="{{url('/')}}"><div class="courses-item mt-2">
                                      <span class="fa fa-gg"></span>
                                      <p>Biology</p>
                                  </div></a>
                              </div>
                              <div class="col-md-3 col-sm-6 col-6 mt-4">
                                  <a href="{{url('/')}}"><div class="courses-item mt-2">
                                      <span class="fa fa-desktop"></span>
                                      <p>Computing</p>
                                  </div></a>
                              </div>
                              <div class="col-md-3 col-sm-6 col-6 mt-4">
                                  <a href="{{url('/')}}"><div class="courses-item mt-2">
                                      <span class="fa fa-mouse-pointer"></span>
                                      <p>Web Design</p>
                                  </div></a>
                              </div>
                          </div>
                          </div>
                  </div>
              </div>
          </div>
      </section>


 
  <section class="w3l-price-2" id="news">
      <div class="price-main py-5">
          <div class="container py-md-3">
               <div class="pricing-style-w3ls row py-md-5">
                <div class="pricing-chart col-lg-6">
                  <h3 class="">ความรู้ใหม่</h3>
                  <div class="tatest-top mt-md-5 mt-4">
                          <div class="price-box btn-layout bt6">
                              <div class="grid grid-column-2">
                                      <div class="column-6">
                                              <img src="assets/images/g9.jpg" alt="" class="img-fluid">
                                          </div>
                                  <div class="column1">
                                     
                                      <div class="job-info">
                                          <h6 class="pricehead"><a href="#">Summer Course Starts </a></h6>
                                          <h5>April 25, 2020</h5>
                                          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit architecto..</p>
                                      </div>
                                  </div>
                                 
                              </div>
                          </div>
                          <div class="price-box btn-layout bt6 top-middle-1">
                              <div class="grid grid-column-2">
                                      <div class="column-6">
                                              <img src="assets/images/g10.jpg" alt="" class="img-fluid">
                                          </div>
                                  <div class="column1">
                                     <div class="job-info">
                                          <h6 class="pricehead"><a href="#">	
                                              About Artificial Intelligence</a></h6>
                                         <h5>March 25, 2020</h5>
                                         <p>Lorem ipsum dolor sit amet consectetur adipisicing elit architecto..</p>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="price-box btn-layout bt6">
                              <div class="grid grid-column-2">
                                      <div class="column-6">
                                              <img src="assets/images/g8.jpg" alt="" class="img-fluid">
                                          </div>
                                  <div class="column1">
                                    
                                      <div class="job-info">
                                          <h6 class="pricehead"><a href="#">	
                                              New Exam Schedules </a></h6>
                                          <h5>February 25, 2020</h5>
                                          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit architecto..</p>
                                      </div>
                                  </div>
                                  
                                  
                              </div>
                          </div>
                      </div>
                      <div class="text-right mt-4">
                          <a class="btn btn-secondary btn-theme2" href="#"> View All</a>
                        </div>
                      </div>
                      <div class="w3l-faq-page col-lg-6 pl-3 pl-lg-5 mt-lg-0 mt-5">
                          <h3 class="">เหตุการณ์ที่จะเกิดขึ้น
                          </h3>
                          <div class="events-top mt-md-5 mt-4">
                              <div class="events-top-left">
                                      <div class="icon-top">
                                          <h3>20</h3>
                                          <p>Nov</p>
                                          <span>2020</span>
                                      </div>
                              </div>
                              <div class="events-top-right">
                                  <h6 class="pricehead"><a href="#">	
                                      Luctus et ultrices posuere</a></h6>
                                      <p class="mb-2 mt-3">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla mollis dapibus nunc, ut rhoncus turpis sodales quis. Integer sit amet mattis quam.</p>
                                      <li>07:00 - 10:00 </li>
                                      <li class="melb">Melbourne, Australia</li>
                              </div>
                          </div>
                          <div class="events-top mt-4">
                              <div class="events-top-left">
                                      <div class="icon-top">
                                          <h3>25</h3>
                                          <p>Nov</p>
                                          <span>2020</span>
                                      </div>
                              </div>
                              <div class="events-top-right">
                                  <h6 class="pricehead"><a href="#">	
                                      Nulla mollis dapibus nunc, ut </a></h6>
                                      <p class="mb-2 mt-3">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla mollis dapibus nunc, ut rhoncus turpis sodales quis. Integer sit amet mattis quam.</p>
                                      <li>07:00 - 10:00 </li>
                                      <li class="melb">Melbourne, Australia</li>
                              </div>
                          </div>
                          <div class="text-right mt-4">
                            <a class="btn btn-secondary btn-theme2" href="#"> View All</a>
                          </div>
                        </div>
              </div>
          </div>
      </div>
  </section>


@endsection