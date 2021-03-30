$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });


    $("body").on("click", ".showetest", function () {
        var id = $(this).data("id");
        var  url_showetest = $('#url_showetest').val();
        $.get( url_showetest+ "/" + id, function (data) {
           // $('#summernote').summernote('reset');
            $("#test-ex").modal("show");
            $("#lable-ex").html("ข้อสอบ");
            document.getElementById("form-ex").reset();
          
            $("#id_sexa").val(data.id_sexa);
            $("#text-show").html(data.html);
        });
    });


    $("#form-ex").submit(function (e) {
        e.preventDefault();
        var cartscore = [];
        var scores = document.querySelectorAll("#form-ex input[type=radio]:checked");
       
        for (var j = 0, score; score = scores[j++];)
        {
            var getvaluescore = {};
            getvaluescore.ans = score.value;
            cartscore.push(getvaluescore);
        
        }
        var cart = [];
        var elements = document.querySelectorAll("#form-ex input[type=hidden]")
        for (var i = 0, element; element = elements[i++];) {
            var getvalue = {};
            getvalue.sec = element.value;
            cart.push(getvalue);
        }
        var id_sub = $("input[name=id_sub]").val();
        var id_sexa = $("input[name=id_sexa]").val();
        var url_savetest = $("#url_savetest").val();
        $.ajax({
            type: "POST",
            data: {
                id_sexa:id_sexa,
                id_sub:id_sub,
                ans:cartscore,
                answer:cart
            },
            url: url_savetest,
            success: function (data) {
                if(data.ans == 'pass'){
                    Swal.fire(
                        "บันทึกสำเร็จ",
                        "คุณสอบผ่าน"+data.score+ "คะแนน",
                        "success"
                    ).then(function () {
                    
                        $("#test-ex").modal("hide");
                    });
                }else{
                    Swal.fire({
                        icon: "error",
                        title: "สอบไม่ผ่าน",
                        text: "คุณสอบไม่ผ่านค่ะ" + data.score + "คะแนน",
                        confirmButtonText: "ตกลง",
                    }).then(function () {
                    
                        $("#test-ex").modal("hide");
                    });
                }
             
               

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