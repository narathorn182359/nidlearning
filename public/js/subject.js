$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });
    
     var url_subject = $('#url_subject').val();
     var tablesubject =   $("#subject_all").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
        processing: true,
        serverSide: true,
        ajax: {
            url: url_subject,
            dataType: "json",
            type: "POST",
            data: { _token: $("#token").val() },
        },
        columns: [
       
            { data: "id_sub" },
            { data: "img_sub" },
            { data: "name_sub" },
            { data: "name_co" },
            { data: "name_cat" },
            { data: "options" },
        ],
    }).buttons().container().appendTo('#subject_all_wrapper .col-md-6:eq(0)');

    function format_subject(callback, rowdata) {
        var url_detailsub = $('#url_detailsub').val();
        $.ajax({
            url: url_detailsub+"/" + rowdata.id_sub,
            type: "GET",
            contentType: "json",
            complete: function (response) {
                console.log(response);
                var data = JSON.parse(response.responseText);
                var list = data;
                var html = "";
                $.each(list, function (index, item) {
                    html +=
                        "<tr>" +
                        '<td width="10">' +
                        item.certno +
                        "</td>" +
                        '<td width="10">' +
                        item.quality +
                        " เม็ด </td>" +
                        "</tr>";
                });

                //console.log(html);
                callback(
                    $(
                        '<a href="javascript:void(0)" class="btn btn-success btn-sm">เพิ่มวิดิโอ</a><table class="table table-bordered table-hover"><thead><tr><th width="10">Video</th><th width="10">เพิ่มเติม</th></tr></thead><tbody>' +
                            html +
                            "</tbody></table>"
                    )
                ).show();
            },
            error: function () {
                $("#output").html("Bummer: there was an error!");
            },
        });
    }

    $("#subject_all tbody").on(
        "click",
        "td.details-control",
        function () {
            var tr = $(this).closest("tr");
            var row = tablesubject.row(tr);

            if (row.child.isShown()) {
                row.child.hide();
                tr.removeClass("shown");
            } else {
                format_subject(row.child, row.data());
                tr.addClass("shown");
            }
        }
    );

    $("body").on("click", ".addsubject", function () {
        var id = $(this).data("id");
        $('#headsubject').html('เพิ่มวิชา');
        $('#modal-subject').modal('show');
        $("#form-subject").trigger("reset");
        $("#skill_status").attr("checked", false);
        $('#id').val(id);   
    })



    $("#form-subject").submit(function(e) {
        var url_savesubject = $('#url_savesubject').val();
        e.preventDefault();
          $.ajax({
            data: $('#form-subject').serialize(),
            url: url_savesubject,
            type: "POST",
            dataType: 'json',
            success: function (data) {
                Swal.fire('Saved!', '', 'success').then(function () {
                    $('#subject_all').DataTable().draw();
                    $("#modal-subject").modal("hide");
                });
               
            },
            error: function (data) {
                Swal.fire('Error!','', 'error')
            }
        });
    })

    
    $("body").on("click", ".editsub", function () {
        var id = $(this).data("id");
        var url_getsubject = $('#url_getsubject').val();
        $.getJSON(url_getsubject+"/"+id, function (data) {
           
            if(data.skill_status == 1){
            
                $("#skill_status").attr("checked", true);
            }else{
              
                $("#skill_status").attr("checked", false);
            }
           
            $('#headsubject').html('แก้วิชา');
            $('#modal-subject').modal('show');
            $("#form-subject").trigger("reset");
            $('#id').val(data.id_sub); 
            $('#name_sub').val(data.name_sub); 
            $('#course_id').val(data.course_id); 
            $('#category_id').val(data.category_id); 
            $('#sub_title').val(data.sub_title);
         
            $("#img").attr("required", false);
        });



    });



    $("body").on("click", ".deletesubject", function () {
        var id = $(this).data("id");
        var url_deletesubject = $('#url_deletesubject').val();
        Swal.fire({
            title: "ยืนยันการลบข้อมูล?",
            text: "กรุณาตรวจสอบก่อนยืนยัน!",
            icon: "info",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "ตกลง",
            cancelButtonText: "ยกเลิก",
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    type: "POST",
                    data: {
                        _token: $("#token").val(),
                        id: id,
                    },
                    url: url_deletesubject,
                    success: function (data) {
                        Swal.fire(
                            "ลบข้อมูลสำเร็จ!",
                            "หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา",
                            "success"
                        ).then(function () {
                            $('#subject_all').DataTable().draw();
                            $("#modal-subject").modal("hide");
                        });
                    },
                    error: function (data) {
                        Swal.fire({
                            type: "error",
                            title: "ผิดพลาด",
                            text: "ไม่สามารถลบได้กรุณาติดต่อทีมพัฒนา",
                            confirmButtonText: "ตกลง",
                        });
                    },
                });
            }
        });
    });


});