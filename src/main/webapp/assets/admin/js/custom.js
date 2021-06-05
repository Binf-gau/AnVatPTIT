$(document).ready(function() {
    // $("#xoa-sanpham").click(function() {
    //     $("#table-sanpham > tbody input:checked").each(function() {
    //         var masanpham = $(this).val();
    //         var This = $(this);
    //         This.closest("tr").remove();
    //         $.ajax({
    //             url: "",
    //             type: "GET",
    //             data: {
    //                 masanpham: masanpham,
    //             },
    //             success: function(value) {
    //                 This.closest("tr").remove();
    //             }
    //         })
    //     })
    // })
    $("#btnLoaiSanPham").click(function() {
    	var loaisp = $("#loai-sp option:selected").val();
        $.ajax({
            url: "/DiamonShop/admin/api/LoadSanPham",
            type: "GET",
            data: {
                loaisp: loaisp
            },
            success: function(value) {
                alert(value);
            }
        })
    });
})