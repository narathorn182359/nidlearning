<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin EL | NGG</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{ asset('admin/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- daterange picker -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/daterangepicker/daterangepicker.css') }}">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css') }}">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet"
        href="{{ asset('admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css') }}">
    <!-- Select2 -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/select2/css/select2.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">
    <!-- Bootstrap4 Duallistbox -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('admin/dist/css/adminlte.min.css') }}">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
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
        .progress { position:relative; width:100%; border: 1px solid #7F98B2; padding: 1px; border-radius: 3px; height: 20px; }
        .bar { background-color: #B4F5B4; width:0%; height:50px; border-radius: 3px; }
        .percent { position:absolute; display:inline-block; top:3px; left:48%; color: #7F98B2;}
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

<body class="hold-transition sidebar-mini">
  <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
  <input type="hidden" name="url_subject" id="url_subject" value="{{url('datasubject')}}">
  <input type="hidden" name="url_savesubject" id="url_savesubject" value="{{url('savesubject')}}">
  <input type="hidden" name="url_category" id="url_category" value="{{url('datacategory')}}">
  <input type="hidden" name="url_course" id="url_course" value="{{url('datacourse')}}">
  <input type="hidden" name="url_deletesubject" id="url_deletesubject" value="{{url('deletesubject')}}">
  <input type="hidden" name="url_videosublect" id="url_videosublect" value="{{url('videosublect')}}">
  <input type="hidden" name="url_datacetegoy" id="url_datacetegoy" value="{{url('datacetegoy')}}">
  <input type="hidden" name="url_savecategory" id="url_savecategory" value="{{url('savecategory')}}">
  <input type="hidden" name="url_deletecategory" id="url_deletecategory" value="{{url('deletecategory')}}">
  <input type="hidden" name="url_geteditcategory" id="url_geteditcategory" value="{{url('geteditcategory')}}">
  <input type="hidden" name="url_course" id="url_course" value="{{url('course')}}">
  <input type="hidden" name="url_datacourse" id="url_datacourse" value="{{url('datacourse')}}">
  <input type="hidden" name="url_deletecourse" id="url_deletecourse" value="{{url('deletecourse')}}">
  <input type="hidden" name="url_savecourse" id="url_savecourse" value="{{url('savecourse')}}">
  <input type="hidden" name="url_geteditcourse" id="url_geteditcourse" value="{{url('geteditcourse')}}">
  <input type="hidden" name="url_saveexpre" id="url_saveexpre" value="{{url('saveexpre')}}">
  <input type="hidden" name="url_deleteallpre" id="url_deleteallpre" value="{{url('deleteallpre')}}">
  <input type="hidden" name="url_deleteallbe" id="url_deleteallbe" value="{{url('deleteallbe')}}">
  <input type="hidden" name="url_deletepost" id="url_deletepost" value="{{url('deletepost')}}">
  <input type="hidden" name="url_deletepost" id="url_deletepost" value="{{url('deletepost')}}">
  <input type="hidden" name="url_detailsub" id="url_detailsub" value="{{url('detailsub')}}">
  <input type="hidden" name="url_savedetailsub" id="url_savedetailsub" value="{{url('savedetailsub')}}">
  <input type="hidden" name="url_datadetailsub" id="url_datadetailsub" value="{{url('datadetailsub')}}">
  <input type="hidden" name="url_geteditsexa" id="url_geteditsexa" value="{{url('geteditsexa')}}">
  <input type="hidden" name="url_delete_video" id="url_delete_video" value="{{url('delete_video')}}">
  <input type="hidden" name="url_getsubject" id="url_getsubject" value="{{url('getsubject')}}">
  <input type="hidden" name="url_datauser" id="url_datauser" value="{{url('datauser')}}">
  <input type="hidden" name="url_deletesubjectdetail" id="url_deletesubjectdetail" value="{{url('deletesubjectdetail')}}">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-dark navbar-navy">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>

            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar elevation-4 sidebar-light-navy">
            <!-- Brand Logo -->
            <a href="index3.html" class="brand-link">
                <img src="{{url('admin/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo"
                    class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">EL</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="{{url('admin/dist/img/user.png')}}" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">{{ Auth::user()->username }}</a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                        <li class="nav-header">การจัดการ</li>
                        <li class="nav-item">
                            <a href="{{ url('/') }}" class="nav-link">
                                <i class="nav-icon far fa-circle text-danger"></i>
                                <p class="text">หน้าเว็บ</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('home') }}" class="nav-link">
                                <i class="nav-icon far fa-circle text-warning"></i>
                                <p>จัดการวิชา</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('category') }}" class="nav-link">
                                <i class="nav-icon far fa-circle text-warning"></i>
                                <p>จัดการหมวดหมู่</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ url('course') }}" class="nav-link">
                                <i class="nav-icon far fa-circle text-warning"></i>
                                <p>จัดการหลักสูตร</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{url('getuser')}}" class="nav-link">
                                <i class="nav-icon far fa-circle text-info"></i>
                                <p>พนักงาน</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{url('indexvideo')}}" class="nav-link">
                                <i class="nav-icon far fa-circle text-info"></i>
                                <p>คลังวิดิโอ</p>
                            </a>
                        </li>
                      
                        <li class="nav-item">
                            <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();
            document.getElementById('logout-form').submit();"> <i class="nav-icon far fa-circle text-info"></i>
                                <p>ออกจากระบบ</p>
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        @yield('content')
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="float-right d-none d-sm-block">
                <b>Version</b> 3.0.5
            </div>
            <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights
            reserved.
        </footer>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="{{ asset('admin/plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('admin/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- Select2 -->
    <script src="{{ asset('admin/plugins/select2/js/select2.full.min.js') }}"></script>
    <!-- Bootstrap4 Duallistbox -->
    <script src="{{ asset('admin/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js') }}"></script>
    <!-- InputMask -->
    <script src="{{ asset('admin/plugins/moment/moment.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/inputmask/min/jquery.inputmask.bundle.min.js') }}"></script>
    <!-- date-range-picker -->
    <script src="{{ asset('admin/plugins/daterangepicker/daterangepicker.js') }}"></script>
    <!-- bootstrap color picker -->
    <script src="{{ asset('admin/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js') }}"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="{{ asset('admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}"></script>
    <!-- Bootstrap Switch -->
    <script src="{{ asset('admin/plugins/bootstrap-switch/js/bootstrap-switch.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('admin/dist/js/adminlte.min.js') }}"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="{{ asset('admin/dist/js/demo.js') }}"></script>

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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
   
    <!-- Page script -->
    <script>
        $(function() {
            //Initialize Select2 Elements
            $('.select2').select2()

            //Initialize Select2 Elements
            $('.select2bs4').select2({
                theme: 'bootstrap4'
            })

            //Datemask dd/mm/yyyy
            $('#datemask').inputmask('dd/mm/yyyy', {
                'placeholder': 'dd/mm/yyyy'
            })
            //Datemask2 mm/dd/yyyy
            $('#datemask2').inputmask('mm/dd/yyyy', {
                'placeholder': 'mm/dd/yyyy'
            })
            //Money Euro
            $('[data-mask]').inputmask()

            //Date range picker
            $('#reservationdate').datetimepicker({
                format: 'L'
            });
            //Date range picker
            $('#reservation').daterangepicker()
            //Date range picker with time picker
            $('#reservationtime').daterangepicker({
                timePicker: true,
                timePickerIncrement: 30,
                locale: {
                    format: 'MM/DD/YYYY hh:mm A'
                }
            })
            //Date range as a button
            $('#daterange-btn').daterangepicker({
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1,
                            'month').endOf('month')]
                    },
                    startDate: moment().subtract(29, 'days'),
                    endDate: moment()
                },
                function(start, end) {
                    $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format(
                        'MMMM D, YYYY'))
                }
            )

            //Timepicker
            $('#timepicker').datetimepicker({
                format: 'LT'
            })

            //Bootstrap Duallistbox
            $('.duallistbox').bootstrapDualListbox()

            //Colorpicker
            $('.my-colorpicker1').colorpicker()
            //color picker with addon
            $('.my-colorpicker2').colorpicker()

            $('.my-colorpicker2').on('colorpickerChange', function(event) {
                $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
            });

            $("input[data-bootstrap-switch]").each(function() {
                $(this).bootstrapSwitch('state', $(this).prop('checked'));
            });

        })

    </script>

@yield('javascript')
@yield('js')
</body>

</html>
