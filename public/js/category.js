$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });

    var url_category = $('#url_category').val();
    $("#category_all").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
        processing: true,
        serverSide: true,
        ajax: {
            url: url_category,
            dataType: "json",
            type: "POST",
            data: { _token: $("#token").val() },
        },
        columns: [
            { data: "name_cat" },
            { data: "options" },
        ],
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

    $("body").on("click", ".addcategory", function () {
        var id = $(this).data("id");
        $('#headcategory').html('เพิ่มหมวดหมู่');
        $('#modal-category').modal('show');
        $("#form-category").trigger("reset");
        $('#id').val(id);   
    })

    $("body").on("click", ".editcategory", function () {
        var id = $(this).data("id");
        var  url_geteditcategory = $('#url_geteditcategory').val();
        $.get( url_geteditcategory+ "/" + id, function (data) {
            $('#headcategory').html('แก้ไขหมวดหมู่');
            $('#modal-category').modal('show');
            $("#form-category").trigger("reset");
            $('#id').val(data.id_cat);   
            $('#name_cat').val(data.name_cat);   
         }); 
    })

    $("#form-category").submit(function(e) {
        var url_savecategory = $('#url_savecategory').val();
        e.preventDefault();
          $.ajax({
            data: $('#form-category').serialize(),
            url: url_savecategory,
            type: "POST",
            dataType: 'json',
            success: function (data) {
                Swal.fire('Saved!', '', 'success').then(function () {
                    $('#category_all').DataTable().draw();
                    $("#modal-category").modal("hide");
                });
               
            },
            error: function (data) {
                Swal.fire('Error!','', 'error')
            }
        });
    });

    $("body").on("click", ".deletecategory", function () {
        var id = $(this).data("id");
        var url_deletecategory = $('#url_deletecategory').val();
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
                    url: url_deletecategory,
                    success: function (data) {
                        Swal.fire(
                            "ลบข้อมูลสำเร็จ!",
                            "หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา",
                            "success"
                        ).then(function () {
                            $('#category_all').DataTable().draw();
                            $("#modal-category").modal("hide");
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






})