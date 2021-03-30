$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });

    $(document).ready(function () {
        $("#answer_pretest").DataTable();
        $("#answer_posttest").DataTable();
        var id = $("#id").val();
        var url_showreport = $("#url_showreport").val();
        var table = $("#showreport")
            .DataTable({
                responsive: true,
                lengthChange: false,
                autoWidth: false,
                buttons: ["copy", "csv", "excel", "pdf", "print", "colvis"],
                processing: true,
                serverSide: true,
                ajax: {
                    url: url_showreport + "/" + id,
                    dataType: "json",
                    type: "POST",
                    data: { _token: $("#token").val() },
                },
                columns: [
                    {
                        className: "details-control",
                        orderable: false,
                        data: null,
                        defaultContent: "",
                    },
                    { data: "id" },
                    { data: "name_title" },
                ],
            });
            $("#showreport ").on("click", "td.details-control", function () {
                var tr = $(this).closest("tr");
                var row = table.row(tr);
                if (row.child.isShown()) {
                    row.child.hide();
                    tr.removeClass("shown");
                } else {
                    format(row.child, row.data());
                    tr.addClass("shown");
                }
            });


        function format(callback, rowdata) {
            var url_detailreport = $("#url_detailreport").val();
            $.ajax({
                url: url_detailreport + "/" + rowdata.id,
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
                            item.score +"/"+  item.formscore + 
                            "</td><td>"+ item.remark+"</td></tr>";
                    });

                    //console.log(html);
                    callback(
                        $(
                            '<table class="table table-bordered table-hover"><thead><tr><th width="10">ผลคะแนน</th><th width="10">สรุป</th></thead><tbody>' +
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

     
    });
});
