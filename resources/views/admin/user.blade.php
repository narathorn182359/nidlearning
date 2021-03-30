@extends('layouts.app')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>รายชื่อ</h1>
          </div>
        </div>
      </div>
    </section>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card card">
              <div class="card-header">
                <h3 class="card-title">รายชื่อ</h3>
              </div>
              <div class="card-body">
                <table id="datauser_all" class="table table-bordered table-striped table-sm centerTable">
                  <thead>
                  <tr>
                  
                    <th>ชื่อ-สกุล</th>
                  
                  </tr>
                  </thead>
                  <tbody>
                
                  </tbody>
                  <tfoot>
                  <tr>
                 
                    <th>ชื่อ-สกุล</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>



  
  
@endsection



@section('javascript')

<script src="{{ asset('js/user.js') }}"></script>

@endsection