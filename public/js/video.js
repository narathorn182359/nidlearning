$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });

    $('body').on('click', '.aas', function () {
        var id = $(this).data("id");
       // confirm("Are You sure want to delete !");
       var url_delete_video  = $('#url_delete_video').val();
        Swal.fire({
          title: 'ยืนยันการลบข้อมูล?',
          text: "กรุณาตรวจสอบก่อนยืนยัน!",
          icon: 'info',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'ตกลง',
          cancelButtonText:  'ยกเลิก',
        }).then((result) => {
          if (result.value) {
            $.ajax({
                type: "POST",
                data:{
                    _token: $('#token').val(),
                    id:id
                 },
              url: url_delete_video,
              success: function (data) {
                Swal.fire(
                  'ลบข้อมูลสำเร็จ!',
                  'หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา',
                  'success'
                ).then(function(){
                  location.reload();
                  });
              },
              error: function (data) {
                Swal.fire({
                  icon: 'error',
                  title: 'ผิดพลาด',
                  text: 'ไม่สามารถลบได้กรุณาติดต่อทีมพัฒนา',
                  confirmButtonText: 'ตกลง',

                })
              }
          });

          }
        })
      });





});