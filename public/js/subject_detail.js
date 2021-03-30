$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });

         var url_datadetailsub = $('#url_datadetailsub').val();
         var id = $('#id').val();
         $("#detailsub_detail").DataTable({
          "responsive": true, "lengthChange": false, "autoWidth": false,
          "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
          processing: true,
          serverSide: true,
          ajax: {
              url: url_datadetailsub+"/"+id,
              dataType: "json",
              type: "POST",
              data: { _token: $("#token").val() },
          },
          columns: [
              { data: "name_title" },
              { data: "options" },
          ],
      })







    $("body").on("click", ".adddetailsub", function () {
        var id = $(this).data("id");
        $('#headdetailsub').html('เพิ่ม');
        $('#modal-detailsub').modal('show');
        $("#form-detailsub").trigger("reset");
        $('#id_sub').val(id);   
        $("#id_se").val(0);
        $("#file").attr("required", true);
        CKEDITOR.instances['editor1'].setData('');
    })

 
    $("body").on("click", ".editdetailsub", function () {
        var id_se = $(this).data("id");
        var  url_geteditsexa = $('#url_geteditsexa').val();
        $.get( url_geteditsexa+ "/" + id_se, function (data) {
           // $('#summernote').summernote('reset');
            $("#modal-detailsub").modal("show");
            $("#headdetailsub").html("แก้ไข");
            document.getElementById("form-detailsub").reset();
            $("#name_title").val(data.name_title);
            $("#file").attr("required", false);
            CKEDITOR.instances['editor1'].setData(data.detail_sub);
            $("#id_se").val(data.id_sexa);
          
        });
    });





    $("#form-detailsub").submit(function (e) {
        e.preventDefault();
        var url_savedetailsub = $("#url_savedetailsub").val();
        var data = CKEDITOR.instances.editor1.getData();
       
        $("#detail_sub").val(data)
        var formData = new FormData(document.getElementById("form-detailsub"));
        $.ajax({
            type: "POST",
            processData: false,
            contentType: false,
            data: formData,
            url: url_savedetailsub,
            success: function (data) {
                Swal.fire(
                    "บันทึกสำเร็จ",
                    "หากสงสัยข้อมูลกรุณาติดต่อทีมพัฒนา",
                    "success"
                ).then(function () {
                    $("#detailsub_detail").DataTable().draw();
                    $("#modal-detailsub").modal("hide");
                    $("#detail_detailsub").val('')
                });
            },
            error: function (data) {
                Swal.fire({
                    icon: "error",
                    title: "ผิดพลาด",
                    text: "ไม่สามารถบันทึกได้กรุณาติดต่อทีมพัฒนา",
                    confirmButtonText: "ตกลง",
                });
            },
        });
    });




});