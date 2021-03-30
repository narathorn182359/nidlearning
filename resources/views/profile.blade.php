@extends('layouts.appel')
@section('content')
<section class="w3l-contact-breadcrum">
    <div class="breadcrum-bg py-sm-5 py-4">
      <div class="container py-lg-3">
        <h2>โปรไฟล์</h2>
        <p><a href="index.html">หน้าแรก</a> &nbsp; / &nbsp; โปรไฟล์</p>
      </div>
    </div>
  </section>
  <!-- contact -->
  <section class="w3l-contacts-12" id="contact">
      <div class="contact-top pt-5">
          <div class="container py-md-3">
              <div class="row cont-main-top">
                  <!-- contact address -->
                  <div class="contact col-lg-4">
                      <div class="cont-subs">
                          <div class="cont-add">
                             <div class="cont-add-rgt">
                              <h4>Address:</h4>
                            -
                          </div>
                          <div class="cont-add-lft">
                              <span class="fa fa-map-marker" aria-hidden="true"></span>
                         </div>
                      </div>
                          <div class="cont-add add-2">
                             <div class="cont-add-rgt">
                              <h4>Email:</h4>
                              <a href="mailto:info@example.com">
                                -
                              </a>
                          </div>
                          <div class="cont-add-lft">
                              <span class="fa fa-envelope" aria-hidden="true"></span>
                         </div>
                      </div>
                          <div class="cont-add">   
                              <div class="cont-add-rgt">
                                   <h4>Phone:</h4>
                                   <a href="tel:+7-800-999-800">
                                    -
                                   </a>
                              </div>
                              <div class="cont-add-lft">
                                  <span class="fa fa-phone" aria-hidden="true"></span>
                             </div>
                          </div>
                      </div>
                  </div>
                  <!-- //contact address -->
                   <!-- contact form -->
                   <div class="contacts12-main col-lg-8 mt-lg-0 mt-5">
                        <div class="form-group">
                            <input type="text" class="form-control" required=""  value="{{$user_detail->Name_Thai}}" readonly>
                        </div>
                        <div class="form-group">
                            <input type="text"  class="form-control" required=""  value="{{$user_detail->JGStatus}}"  readonly>
                        </div>
                        <div class="form-group">
                            <input type="text"  class="form-control" required=""  value="{{$user_detail->Position}}"  readonly>
                        </div>
                <div class="text-right">
                          <a href="{{url('/class')}}"  class="btn btn-theme2">เข้าเรียน</a>      
                </div>  
            </div>
                  <!-- //contact form -->
              </div>
          </div>
      
      </div>
  </section>


@endsection