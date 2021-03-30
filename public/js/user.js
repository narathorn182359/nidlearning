$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });

    var url_datauser = $('#url_datauser').val();
    $("#datauser_all").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
        processing: true,
        serverSide: true,
        ajax: {
            url: url_datauser,
            dataType: "json",
            type: "POST",
            data: { _token: $("#token").val() },
        },
        columns: [
            { data: "Name_Thai" },
         ],
    }).buttons().container().appendTo('#subject_all_wrapper .col-md-6:eq(0)');










});