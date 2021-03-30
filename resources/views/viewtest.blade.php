@extends('layouts.appel')
@section('content')
<section class="w3l-service-breadcrum">
    <div class="breadcrum-bg py-sm-5 py-4">
      <div class="container py-lg-3">
        <h2>ผลคะแนน</h2>
      <p><a href="{{url('room/'.$id)}}">วิชา</a> &nbsp; / &nbsp; คะแนน</p>
      </div>
    </div>
  </section>
  <input type="hidden" name="id" id="id"  value="{{$id}}">
  <section class="w3l-features-8">
    <div class="container">
        <br>
        ก่อนเรียน
        <table class="table table-bordered" id="answer_pretest">
            <thead>
                <tr>
                  <th>ผลสอบ</th>
                </tr>
                </thead>
                <tbody>
                    @foreach ($answer_pretest as $item)
                        <tr>
                            <td>
                                {{$item->score}} /   {{$item->formscore}}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
                <tfoot>
                <tr>
                  <th>ผลสอบ</th>
                </tr>
                </tfoot>
        </table>
        <br>
        <hr>
        ผลสอบระหว่างเรียน
    <table class="table table-bordered" id="showreport">
        <thead>
            <tr>
              <th>ผลสอบ</th>
              <th>*</th>
              <th>หัวเรื่อง</th>
            </tr>
            </thead>
            <tbody>
          

            </tbody>
            <tfoot>
            <tr>
              <th>ผลสอบ</th>
              <th>*</th>
              <th>หัวเรื่อง</th>
             
            </tr>
            </tfoot>
    </table>
    <hr>
    หลังเรียน
    <table class="table table-bordered" id="answer_posttest">
        <thead>
            <tr>
              <th>ผลสอบ</th>
              
            </tr>
            </thead>
            <tbody>
                @foreach ($answer_posttest as $item)
                <tr>
                    <td>
                        {{$item->score}} /   {{$item->formscore}}
                    </td>
                </tr>
            @endforeach
            </tbody>
            <tfoot>
            <tr>
              <th>ผลสอบ</th>
            </tr>
            </tfoot>
    </table>
    <br>
    </div>
  </section>
@endsection

@section('javascript')
<script src="{{ asset('js/showreport.js') }}"></script>

@endsection