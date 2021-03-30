@extends('layouts.app')
@section('content')
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
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">วิดิโอ</h3>
                            </div>
                            <div class="card-body">
                            <form method="post" action="{{ route('upload') }}" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="subject_name">ชื่อวิชา</label>
                                    <input type="text" class="form-control" id="subject_name"  name="subject_name" required>
                                  </div>

                                  <div class="form-group">
                                    <label for="video_name">ตอน</label>
                                    <input type="text" class="form-control" id="episode"  name="episode" required>
                                  </div>
                                <div class="row">
                                    <div class="col-md-3" align="right">
                                        <h4>Select Video</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="file" name="file" id="video" required />
                                    </div>
                                    <div class="col-md-3">
                                        <input type="submit" name="upload" value="Upload" class="btn btn-success" />
                                    </div>
                                </div>
                            </form>
                            <br />
                            <div class="progress">
                                <div class="bar"></div >
                                <div class="percent">0%</div >
                            </div>
                            <br />
                            <div id="success"></div>
                            <br />
                        </div>
                         </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">วิดิโอ</h3>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                @foreach ($video as $item)
                                <div class="col-md-3">
                                    <div class="card card-success">
                                        <div class="card-header">
                                            <h3 class="card-title"> {{ $item->subject_name }}</h3>
                                        </div>
                                        <div class="card-body">
                                            ตอน:   {{ $item->episode }}
                                            <p id="p1">{{url('video/' . $item->video_name) }}</p>
                                           <div class="form-group">
                                            <button class="btn btn-info  btn-sm" onclick="copyToClipboard('#p1')">Copy link</button>
                                           </div>
                                      

                                            <video width="100%" controls>
                                                <source src="{{ url('video/' . $item->video_name) }}" type="video/mp4">Your browser does not
                                                support the video
                                                tag.
                                            </video><br />
                                                <a href="javascript:void(0)" class="btn btn-danger aas" data-id='{{$item->id_vi}}'>ลบ</a>
                                               
                                        </div>
                                    </div>
                                  </div>
                            @endforeach
                        </div>
                        </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
 
@endsection

@section('javascript')

<script src="{{asset('js/video.js')}}"></script>
<script src="{{asset('js/jquery.form.js')}}"></script>
<script type="text/javascript">

function copyToClipboard(element) {
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();
}

    function validate(formData, jqForm, options) {
        var form = jqForm[0];
        if (!form.video.value) {
            alert('File not found');
            return false;
        }
    }

    (function() {

    var bar = $('.bar');
    var percent = $('.percent');
    var status = $('#status');

    $('form').ajaxForm({
        beforeSubmit: validate,
        beforeSend: function() {
            status.empty();
            var percentVal = '0%';
            var posterValue = $('input[name=file]').fieldValue();
            bar.width(percentVal)
            percent.html(percentVal);
        },
        uploadProgress: function(event, position, total, percentComplete) {
            var percentVal = percentComplete + '%';
            bar.width(percentVal)
            percent.html(percentVal);
            if(percentComplete == 100){
                percent.html('Wait, Saving');
            }

        },
        success: function() {
            var percentVal = 'Wait, Saving';
            bar.width(percentVal)
            percent.html(percentVal);
        },
        complete: function(xhr) {
            status.html(xhr.responseText);
            alert('Uploaded Successfully');
            window.location.href = "/indexvideo";
        }
    });

    })();
</script>

@endsection
