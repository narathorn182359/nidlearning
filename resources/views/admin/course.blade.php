@extends('layouts.app')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>จัดการหลักสูตร</h1>
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
                <h3 class="card-title">หลักสูตร <a href="javascript:void(0)" class="btn btn-success addcourse" data-id="0">เพิ่มหลักสูตร</a></h3>
              </div>
            
              <div class="card-body">
                <table id="course_all" class="table table-bordered table-striped table-sm centerTable">
                  <thead>
                  <tr>
                    <th>หลักสูตร</th>
                    <th>เพิ่มเติม</th>
                  </tr>
                  </thead>
                  <tbody>
                  </tbody>
                  <tfoot>
                  <tr>
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



  <div class="modal fade" id="modal-course">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="headcourse"></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form id="form-course">
        <div class="modal-body">
       <input type="hidden" name="id" id="id">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>ชื่อหลักสูตร:</label>
               <input type="text" class="form-control"  id="name_co" name="name_co" value="" required>
                </div>
              </div>
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
<script src="{{ asset('js/course.js') }}"></script>
@endsection