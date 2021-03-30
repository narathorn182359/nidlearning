$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });

    $("#form-pre").submit(function (e) {
        e.preventDefault();
        var cartscore = [];
        var scores = document.querySelectorAll("#form-pre input[type=radio]:checked");
       
        for (var j = 0, score; score = scores[j++];)
        {
            var getvaluescore = {};
            getvaluescore.ans = score.value;
            cartscore.push(getvaluescore);
        
        }
        var cart = [];
        var elements = document.querySelectorAll("#form-pre  input[type=hidden]")
        for (var i = 0, element; element = elements[i++];) {
            var getvalue = {};
            getvalue.sec = element.value;
            cart.push(getvalue);
        }
        var id_sub = $("input[name=id_sub]").val();
        var url_savepretest = $("#url_savepretest").val();
        console.log(cartscore);
        console.log(cart);
        $.ajax({
            type: "POST",
            data: {
                id_sub:id_sub,
                ans:cartscore,
                answer:cart
            },
            url: url_savepretest,
            success: function (data) {
                    Swal.fire(
                        "บันทึกสำเร็จ",
                        "คุณสอบได้ "+data.score+ " คะแนน",
                        "success"
                    ).then(function () {
                        $("#form-pre").trigger("reset");
                        
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