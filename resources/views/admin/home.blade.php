@extends('layouts.app')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>จัดการวิชา</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">วิชา  <a href="javascript:void(0)" class="btn btn-success addsubject" data-id="0">เพิ่มวิชา</a></h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="subject_all" class="table table-bordered table-striped table-sm centerTable">
                  <thead>
                  <tr>
              
                    <th>#</th>
                    <th>รูป</th>
                    <th>ชื่อวิชา</th>
                    <th>หมวดหมู่</th>
                    <th>หลักสูตร</th>
                    <th>เพิ่มเติม</th>
                  </tr>
                  </thead>
                  <tbody>
                
                  </tbody>
                  <tfoot>
                  <tr>
                    
                    <th>#</th>
                    <th>รูป</th>
                    <th>ชื่อวิชา</th>
                    <th>หมวดหมู่</th>
                    <th>หลักสูตร</th>
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

  <div class="modal fade" id="modal-subject">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="headsubject"></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form id="form-subject">
        <div class="modal-body">
       <input type="hidden" name="id" id="id">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>ชื่อวิชา:</label>
               <input type="text" class="form-control"  id="name_sub" name="name_sub" value="" required>
                </div>
               
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>หลักสูตรวิชา:</label>
                  <select class="select2"   style="width: 100%;" required id="category_id" name="category_id"> 
                    @foreach ($category as $item)
                        <option value="{{$item->id_cat}}">{{$item->name_cat}}</option>
                    @endforeach
                  </select>
                </div>
              </div>
          
            </div>
            <div class="row">
              <div class="col-md-6">
                  <div class="form-group">
                    <label>หมวดหมู่:</label>
                    <select class="form-control select2"  style="width: 100%;" id="course_id" name="course_id" required>
                      @foreach ($course as $item)
                      <option value="{{$item->id_co}}">{{$item->name_co}}</option>
                      @endforeach
                    </select>
                  </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>ความรู้ทั่วไป:</label>
                  <div class="custom-control custom-checkbox">
                    <input class="custom-control-input" type="checkbox" id="skill_status"   name="skill_status"  value="1">
                    <label for="skill_status" class="custom-control-label">ยืนยันความรู้ทั่วไป</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>อธิบายย่อ:</label>
                   <input type="text" name="sub_title" id="sub_title"  class="form-control "  required  >
                  </select>
                </div>
              </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>รูป:</label>
                     <input type="file"  id="img"  name="img" class="form-control "  required accept="image/*"  onchange="encodeImageFileAsURL1(this)">
                     <input type="hidden"   name="img_sub"   id="img_sub" >
                    </select>
                  </div>
                </div>
            </div>
            <div>
              
            </div>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
          <button  type="submit" class="btn btn-primary">บันทึก</button>
        </div>
      </form>
      </div>
    </div>
  </div>

@endsection



@section('javascript')
<script>
  function encodeImageFileAsURL1(element) {
      var file = element.files[0];
      var reader = new FileReader();
      reader.onloadend = function() {

          $('#img_sub').val(reader.result);
      }
      reader.readAsDataURL(file);
  }

</script>

<script src="{{ asset('js/subject.js') }}"></script>

@endsection