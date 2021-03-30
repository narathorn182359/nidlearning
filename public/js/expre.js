$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });


    $("body").on("click", ".expre", function () {
        $('#headexpre').html('เพิ่มข้อสอบก่อนเรียน');
        $('#modal-expre').modal('show');
        $("#form-expre").trigger("reset");
    })


    $("#form-expre").submit(function(e) {
        var url_saveexpre = $('#url_saveexpre').val();
        e.preventDefault();
          $.ajax({
            data: $('#form-expre').serialize(),
            url: url_saveexpre,
            type: "POST",
            dataType: 'json',
            success: function (data) {
                Swal.fire('Saved!', '', 'success').then(function () {
                 window.location.reload();
                });
               
            },
            error: function (data) {
                Swal.fire('Error!','', 'error')
            }
        });
    })


    $("body").on("click", ".deleteallpre", function () {
        var id = $(this).data("id");
        var url_deleteallpre = $('#url_deleteallpre').val();
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
                    url: url_deleteallpre,
                    success: function (data) {
                        Swal.fire(
                            "ลบข้อมูลสำเร็จ!",
                            "หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา",
                            "success"
                        ).then(function () {
                            window.location.reload();
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



    $("body").on("click", ".deleteallbe", function () {
        var id = $(this).data("id");
        var url_deleteallbe = $('#url_deleteallbe').val();
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
                    url: url_deleteallbe,
                    success: function (data) {
                        Swal.fire(
                            "ลบข้อมูลสำเร็จ!",
                            "หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา",
                            "success"
                        ).then(function () {
                            window.location.reload();
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



    $("body").on("click", ".deletepost", function () {
        var id = $(this).data("id");
        var url_deletepost = $('#url_deletepost').val();
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
                    url: url_deletepost,
                    success: function (data) {
                        Swal.fire(
                            "ลบข้อมูลสำเร็จ!",
                            "หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา",
                            "success"
                        ).then(function () {
                            window.location.reload();
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