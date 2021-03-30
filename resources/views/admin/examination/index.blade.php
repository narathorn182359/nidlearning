@extends('layouts.app')
@section('content')
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>จัดการข้อสอบ

                            <a href="javascript:void(0)" class="btn btn-success btn-sm expre">เพิ่มข้อสอบ</a>


                        </h1>
                        <br>
                        @if (Session::has('success'))
                        <div class="alert alert-success alert-dismissible">
                          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                          <h5><i class="icon fas fa-check"></i> Alert!</h5>
                          {!! session('success') !!}
                        </div>
                         
                        @endif
                        <form action="{{ url('saveexpreforexcel') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="">อัพโหลดข้อสอบ</label>
                                <input type="hidden" name="id" id="id" value="{{$id}}">
                                <input type="file" name="file" id="file" required>
                                <input type="submit" value="บันทึก" class="btn btn-success">
                            </div>

                        </form>
                        <form action="{{ url('dowloadtexam') }}" method="post">
                            @csrf
                            <div class="form-group">
                                <label for="">โหลดไฟล์สำหรับการอัพโหลด</label>
                                <input type="submit" value="โหลด" class="btn btn-info">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">

                        <div class="card card-outline card-primary">
                            <div class="card-header">
                                <h3 class="card-title"> 1 ก่อนเรียน

                                </h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body">
                              <div class="form-group">
                                <a href="javascript:void(0)"  class="btn btn-danger deleteallpre" data-id="{{$id}}">ลบทั้งหมด</a>
                              </div>
                                <table id="exampre" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>ลำดับ</th>
                                            <th>คำถาม</th>
                                            <th>เพิ่มเติม</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($expre_arr as $item)
                                            <tr>
                                                <td>

                                                </td>
                                                <td>
                                                    {{ $item->section }}
                                                </td>
                                                <td>

                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                           <th>ลำดับ</th>
                                            <th>คำถาม</th>
                                            <th>เพิ่มเติม</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
              {{--           <div class="card card-outline card-info">
                            <div class="card-header">
                                <h3 class="card-title"> 2.ระหว่างเรียน

                                </h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body">
                              <div class="form-group">
                                <a href="javascript:void(0)"  class="btn btn-danger deleteallbe" data-id="{{$id}}">ลบทั้งหมด</a>
                              </div>
                                <table id="exambe" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                          <th>ลำดับ</th>
                                            <th>คำถาม</th>
                                            <th>เพิ่มเติม</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($exbe_arr as $item)
                                            <tr>
                                                <td>

                                                </td>
                                                <td>
                                                    {{ $item->section }}
                                                    
                                                </td>
                                                <td>

                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                          <th>ลำดับ</th>
                                            <th>คำถาม</th>
                                            <th>เพิ่มเติม</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div> --}}


                        <div class="card card-outline card-danger">
                            <div class="card-header">
                                <h3 class="card-title">3.หลังเรียน


                                </h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body">
                              <div class="form-group">
                              <a href="javascript:void(0)"  class="btn btn-danger deletepost" data-id="{{$id}}">ลบทั้งหมด</a>
                              </div>
                                <table id="exampost" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                          <th>ลำดับ</th>
                                            <th>คำถาม</th>
                                            <th>เพิ่มเติม</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($expost_arr as $item)
                                            <tr>
                                                <td>

                                                </td>
                                                <td>
                                                    {{ $item->section }}
                                                </td>
                                                <td>

                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                          <th>ลำดับ</th>
                                            <th>คำถาม</th>
                                            <th>เพิ่มเติม</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>






                    </div>
                </div>
            </div>
        </section>
    </div>



    <div class="modal fade" id="modal-expre">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="headexpre"></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="form-expre">
                    <div class="modal-body">
                        <input type="hidden" name="id" id="id" value="{{ $id }}">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>ชุดข้อสอบ:</label>
                                    <select name="e_status" id="e_status" class="form-control">
                                        <option value="1">ก่อนสอบ</option>
                                        <option value="2">ระหว่างเรียน</option>
                                        <option value="3">หลังสอบ</option>
                                    </select>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>คำถาม:</label>
                                    <textarea name="question" id="question" cols="30" rows="10" class="form-control"
                                        required></textarea>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>คำตอบ 1:</label>
                                    <input type="text" class="form-control" id="answer_1" name="answer_1" value="" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>คำตอบ 2:</label>
                                    <input type="text" class="form-control" id="answer_2" name="answer_2" value="" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>คำตอบ 3:</label>
                                    <input type="text" class="form-control" id="answer_3" name="answer_3" value="" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>คำตอบ 4:</label>
                                    <input type="text" class="form-control" id="answer_4" name="answer_4" value="" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>คำตอบที่ถูก</label>
                                    <input type="number" class="form-control" min="1" id="answer_pass" name="answer_pass"
                                        value="" required>
                                </div>
                            </div>
                        </div>
                    <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                      
                            <input type="hidden"  id="active" name="active"  checked value="1">
                        </div>
                    </div>
                </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
                        <button type="submit" class="btn btn-primary">บันทึก</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection



@section('javascript')

    <script src="{{ asset('js/expre.js') }}"></script>
    <script>
        $(function() {
            $("#exampre").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
            }).buttons().container().appendTo('#exampre_wrapper .col-md-6:eq(0)');

            $("#exambe").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
            }).buttons().container().appendTo('#exambe_wrapper .col-md-6:eq(0)');


            $("#exampost").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
            }).buttons().container().appendTo('#exampost_wrapper .col-md-6:eq(0)');

        });

    </script>
@endsection
