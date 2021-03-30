$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });
    $(document).ready(function(){
        var url_noti = $('#url_noti').val();
        $.ajax({
            data:{
                id:'1'
            },
             url: url_noti,
             type: "POST",
             dataType: 'json',
             success: function (data) {
                $('#noti').html(data);
                $('#noti2').html(data);
                
              // console.log(data);
                
             },
             error: function (data) {
                console.log(data);
             }
         });



    });
 




});