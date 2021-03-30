$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });


    var url_course = $('#url_course').val();
    $("#course_all").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
        processing: true,
        serverSide: true,
        ajax: {
            url: url_course,
            dataType: "json",
            type: "POST",
            data: { _token: $("#token").val() },
        },
        columns: [
            { data: "name_co" },
            { data: "options" },
        ],
    });

    $("body").on("click", ".addcourse", function () {
        var id = $(this).data("id");
        $('#headcourse').html('เพิ่มหลักสูตร');
        $('#modal-course').modal('show');
        $("#form-course").trigger("reset");
        $('#id').val(id);   
    })

    $("body").on("click", ".editcourse", function () {
        var id = $(this).data("id");
        var  url_geteditcourse = $('#url_geteditcourse').val();
        $.get( url_geteditcourse + "/" + id, function (data) {
            $('#headcourse').html('แก้ไขหลักสูตร');
            $('#modal-course').modal('show');
            $("#form-course").trigger("reset");
            $('#id').val(data.id_co);   
            $('#name_co').val(data.name_co);   
         }); 
    })

    $("#form-course").submit(function(e) {
        var url_savecourse = $('#url_savecourse').val();
        e.preventDefault();
          $.ajax({
            data: $('#form-course').serialize(),
            url: url_savecourse,
            type: "POST",
            dataType: 'json',
            success: function (data) {
                Swal.fire('Saved!', '', 'success').then(function () {
                    $('#course_all').DataTable().draw();
                    $("#modal-course").modal("hide");
                });
               
            },
            error: function (data) {
                Swal.fire('Error!','', 'error')
            }
        });
    });





    $("body").on("click", ".deletecourse", function () {
        var id = $(this).data("id");
        var url_deletecourse = $('#url_deletecourse').val();
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
                    url: url_deletecourse,
                    success: function (data) {
                        Swal.fire(
                            "ลบข้อมูลสำเร็จ!",
                            "หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา",
                            "success"
                        ).then(function () {
                            $('#course_all').DataTable().draw();
                            $("#modal-course").modal("hide");
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