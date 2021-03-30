<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>MGGEL</title>
    <!-- web fonts -->
    <link href="//fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <!-- //web fonts -->
    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/style-starter.css') }}">
    <link rel="stylesheet" href="{{ asset('css/bs-stepper.min.css') }}">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Sarabun:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
    <style>
        body {
            font-family: 'Sarabun', sans-serif;
        }

    </style>
     <style>
        td.details-control {
          background: url('https://datatables.net/examples/resources/details_open.png') no-repeat center center;
          cursor: pointer;
      }
      tr.shown td.details-control {
          background: url('https://datatables.net/examples/resources/details_close.png') no-repeat center center;
      }
      </style>
          <style>
            table.table.table-striped.table-bordered td,
          
          table.table.table-striped.table-bordered td.text {
          
          /*max-width: 177px;*/
          
          }
          
          table.table.table-striped.table-bordered td,
          
          table.table.table-striped.table-bordered td.text,
          
          table.table.table-striped.table-bordered th,
          
          table.table.table-striped.table-bordered th.text,
          
          table.table.table-striped.table-bordered span {
          
          white-space: nowrap;
          
          overflow: hidden;
          
          text-overflow: ellipsis;
          
          max-width: 100%;
          
          }
          
          td {
          
          max-width: 500px !important;
          
          overflow: hidden;
          
          text-overflow: ellipsis;
          
          white-space: nowrap;
          
          }
              </style>
</head>

<body>

    <input type="hidden" name="url_noti" id="url_noti" value="{{url('noti')}}">
    <input type="hidden" name="url_showetest" id="url_showetest" value="{{url('showetest')}}">
    <input type="hidden" name="url_savetest" id="url_savetest" value="{{url('savetest')}}">
    <input type="hidden" name="url_savepretest" id="url_savepretest" value="{{url('savepretest')}}">
    <input type="hidden" name="url_saveprepost" id="url_saveprepost" value="{{url('saveprepost')}}">
    <input type="hidden" name="url_showreport" id="url_showreport" value="{{url('showreport')}}">
    <input type="hidden" name="url_detailreport" id="url_detailreport" value="{{url('detailreport')}}">
    
    
    <!-- Top Menu 1 -->
    <section class="w3l-top-menu-1">
        <div class="top-hd">
            <div class="container">
                <header class="row top-menu-top">
                    <div class="accounts col-md-9 col-6">
                        <li class="top_li"><span class="fa fa-phone"></span><a
                                href="tel:+66 065-871-7999">065-871-7999</a> </li>
                        <li class="top_li1"><span class="fa fa-envelope-o"></span> <a href="mailto:hrd3@ciengems.com"
                                class="mail"> hrd3@ciengems.com</a> </li>
                    </div>
                    <div class="social-top col-md-3 col-6">
                        @guest
                        @else
                            <a href="{{ url('/') }}" class="btn btn-secondary btn-theme4"> สวัสดี
                                {{ Auth::user()->username }} </a>
                            @endif
                        </div>
                    </header>
                </div>
            </div>
        </section>
        <!-- //Top Menu 1 -->
        <section class="w3l-bootstrap-header">
            <nav class="navbar navbar-expand-lg navbar-light py-lg-2 py-2">
                <div class="container">
                    <a class="navbar-brand" href="{{ url('/') }}"><span class="fa fa-pencil-square-o "></span> NID Learning</a>
                    <!-- if logo is image enable this   
                <a class="navbar-brand" href="#index.html">
                    <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                </a> -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon fa fa-bars"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('/') }}">หน้าแรก</a>
                            </li>
                            @guest
                            @else
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/profile') }}">โปรไฟล์</a>
                                </li>
                                @endif
                                @role('admin')
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/home') }}">การจัดการ</a>
                                </li>

                                @endrole

                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/skill') }}">ความรู้ทั้วไป</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/class') }}">วิชาของคุณ
                                        @guest
                                        @else
                                            <span class="badge  badge-danger" id='noti'></span>
                                            @endif


                                        </a>
                                        @guest
                                        @else
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                                          document.getElementById('logout-form').submit();">
                                                ออกจากระบบ
                                            </a>
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                @csrf
                                            </form>
                                        </li>
                                        @endif

                                    </ul>

                                </div>
                            </div>
                        </nav>
                    </section>

                    @yield('content')

                    <!-- grids block 5 -->
                    <section class="w3l-footer-29-main">
                        <div class="footer-29">
                            <div class="container">
                                <div class="d-grid grid-col-4 footer-top-29">
                                    <div class="footer-list-29 footer-1">
                                        <h6 class="footer-title-29">Contact Us</h6>
                                        <ul>
                                            <li>
                                                <p><span class="fa fa-map-marker"></span> 555 Soi Chokchaijongjamrean, แขวง บางโพงพาง
                                                    เขต ยานนาวา กรุงเทพมหานคร 10120</p>
                                            </li>
                                            <li><a href="tel:065-871-7999"><span class="fa fa-phone"></span>065-871-7999</a></li>
                                            <li><a href="mailto:hrd3@ciengems.com" class="mail"><span
                                                        class="fa fa-envelope-open-o"></span> hrd3@ciengems.com</a></li>
                                        </ul>
                                        <div class="main-social-footer-29">
                                            <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
                                            <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
                                            <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
                                            <a href="#google-plus" class="google-plus"><span class="fa fa-google-plus"></span></a>
                                            <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
                                        </div>
                                    </div>
                                    <div class="footer-list-29 footer-2">

                                    </div>
                                    <div class="footer-list-29 footer-3">




                                    </div>
                                    <div class="footer-list-29 footer-4">
                                        <ul>
                                            <h6 class="footer-title-29">Quick Links</h6>
                                            <li><a href="{{ url('/profile') }}">โปรไฟล์</a></li>
                                            <li><a href="{{ url('/') }}">หน้าแรก</a></li>
                                            <li><a href="{{ url('/skill') }}">ความรู้น่าสนใจ</a></li>
                                            <li><a href="{{ url('/class') }}">วิชาของคุณ
                                                    @guest
                                                    @else
                                                        <span class="badge badge-pill badge-danger" id="noti2" ></span>
                                                        @endif


                                                    </a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="d-grid grid-col-2 bottom-copies">
                                        <p class="copy-footer-29">© 2020 Mastery. All rights reserved | Designed by <a
                                                href="https://w3layouts.com">W3layouts</a></p>
                                        <ul class="list-btm-29">
                                            <li><a href="#link">Privacy policy</a></li>
                                            <li><a href="#link">Terms of service</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- move top -->
                            <button onclick="topFunction()" id="movetop" title="Go to top">
                                <span class="fa fa-angle-up"></span>
                            </button>
                            <script>
                                // When the user scrolls down 20px from the top of the document, show the button
                                window.onscroll = function() {
                                    scrollFunction()
                                };

                                function scrollFunction() {
                                    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                                        document.getElementById("movetop").style.display = "block";
                                    } else {
                                        document.getElementById("movetop").style.display = "none";
                                    }
                                }

                                // When the user clicks on the button, scroll to the top of the document
                                function topFunction() {
                                    document.body.scrollTop = 0;
                                    document.documentElement.scrollTop = 0;
                                }

                            </script>
                            <!-- /move top -->
                        
                        <script src="{{asset('assets/js/jquery-3.3.1.min.js')}}"></script>
                        <!-- //footer-28 block -->
                    
                        <script>
                            $(function() {
                                $('.navbar-toggler').click(function() {
                                    $('body').toggleClass('noscroll');
                                })
                            });

                        </script>
                        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                    
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
                        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
                        <!-- Template JavaScript -->
                     
                        <script src="{{ asset('js/bs-stepper.min.js') }}"></script>
                        <!-- Smooth scrolling -->
                        <!-- <script src="assets/js/smoothscroll.js"></script> -->
                        <script src="{{ asset('assets/js/owl.carousel.js') }}"></script>
                        <script src="{{ asset('admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/jszip/jszip.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/pdfmake/pdfmake.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/pdfmake/vfs_fonts.js') }}"></script>
                        <script src="{{ asset('admin/plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
                        <script src="{{ asset('admin/plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>
                        @yield('javascript')
                        <!-- script for -->
                        <script>
                            $(document).ready(function() {
                                $('.owl-one').owlCarousel({
                                    loop: true,
                                    margin: 0,
                                    nav: true,
                                    responsiveClass: true,
                                    autoplay: false,
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
                  
                        <script src="{{ asset('js/noti.js') }}"></script>
                
                    </body>
 </html>
                    <!-- // grids block 5 -->
