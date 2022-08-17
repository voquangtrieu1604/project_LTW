

function removeThisProduct(idProduct) {
    var id = idProduct.id;
    $.ajax({
        url: '/project_LTW_war/removeProductFromCart',
        type: 'post',
        data: {
            id: id
        },
        success: function (data) {
            $("#listCart").html(data);
            num--
            $("#numberProductCartHeader").html(num);
            $("#numberProductCart").html(num);
        },
        error: function (xhr) {

        }
    })
}
