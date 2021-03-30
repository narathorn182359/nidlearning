@extends('layouts.appel')
 
@section('content')

<section class="w3l-contact-breadcrum">
    <div class="breadcrum-bg py-sm-5 py-4">
      <div class="container py-lg-3">
        <h2>เข้าสู่ระบบ</h2>
       
      </div>
    </div>
  </section>
  <!-- contact -->
  <section class="w3l-contacts-12" id="contact">
      <div class="contact-top pt-5">
          <div class="container py-md-3">
              <div class="row cont-main-top">
                   <!-- contact form -->
                   <div class="col-md-12">
                
                        @if(session()->has('login_error'))
                        <div class="alert alert-danger">
                            <strong>ไม่พบรหัสผ่านพนักงานหรือรหัสผ่านไม่ถูกต้อง!</strong>   {{ session()->get('login_error') }}
                          </div>
                      
                   
                         @endif
                        <form method="POST" action="{{ route('login') }}" class="main-input">
                            @csrf 
                        <div class="form-group">
                          <input type="text" placeholder="รหัสพนักงาน" name="username" id="username" required="">
                        </div>
                        <div class="form-group">
                          <input type="password" placeholder="รหัสผ่าน" name="password" id="password" required="">
                        </div>
                          <div class="text-center">
                            <div class="form-group">
                              <button type="submit" class="btn btn-theme2">เข้าสู่ระบบ</button>
                            </div>
                          </div>
                      </form>
                  </div>
                  <!-- //contact form -->
              </div>
          </div>
   
      </div>
  </section>






@endsection
