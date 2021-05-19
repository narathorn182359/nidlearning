@extends('layouts.app')
@section('content')
<input type="hidden" value="{{$id}}"  name="id" id="id">
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>จัดการเนื้อหา</h1>
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">วิชา <a href="javascript:void(0)"
                                        class="btn btn-success adddetailsub" data-id="{{$id}}">เพิ่ม</a></h3>
                            </div>
                            <table id="detailsub_detail" class="table table-bordered table-striped table-sm centerTable">
                                <thead>
                                    <tr>
                                        <th>ตอนที่</th>
                                        <th>เพิ่มเติม</th>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>ตอนที่</th>
                                        <th>เพิ่มเติม</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="modal fade" id="modal-detailsub">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="headdetailsub"></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="form-detailsub">
                    <div class="modal-body">
                        <input type="hidden" name="id_sub" id="id_sub"  value="{{$id}}">
                        <input type="hidden" name="id_se" id="id_se" >
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>ชื่อตอน:</label>
                                    <input type="text" class="form-control" id="name_title" name="name_title" value=""
                                        required>
                                </div>
                                <div class="form-group">
                                    <textarea id="editor1" name="editor1"class="form-control" ></textarea>
                                 <input type="hidden" name="detail_sub" id="detail_sub">
                                </div>
                                <div class="form-group">
                                    <label for="">อัพโหลดข้อสอบ</label>
                                    <input type="file" name="file" id="file" >
            </div>
        </div>
    </div>
</div>
    <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
        <button type="submit" class="btn btn-primary">บันทึก</button>
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



@endsection



@section('javascript')
<script src="{{asset('js/ckeditor/ckeditor.js')}}"></script>

  <script>
  
        CKEDITOR.replace('editor1',  {
            filebrowserUploadUrl: "{{route('ckeditor.upload', ['_token' => csrf_token() ])}}",
            filebrowserUploadMethod: 'form'
        });
  </script>
 <script src="{{ asset('js/subject_detail.js?v=1') }}"></script>

@endsection
