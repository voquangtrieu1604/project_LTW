<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="discription" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Đặt hàng</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/style.css">

</head>
<% List<Product> danhSachSanPham = (List<Product>) request.getAttribute("listProductCart");%>
<% Cart giohang = (Cart) request.getAttribute("giohang");%>
<body>
<!-- ##### Header Area Start ##### -->
<%@include file="header.jsp" %>
<!-- ##### Header Area End ##### -->

<!-- ##### Right Side Cart Area ##### -->
<%@include file="cartArea.jsp" %>
<!-- ##### Right Side Cart End ##### -->

<!-- ##### Breadcumb Area Start ##### -->
<div class="breadcumb_area bg-img" style="background-image: url(assets/img/bg-img/breadcumb.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="page-title text-center">
                    <h2>Đặt hàng</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Breadcumb Area End ##### -->

<!-- ##### Checkout Area Start ##### -->
<div class="checkout_area section-padding-80">
    <div class="container">
        <div class="row">

            <div class="col-12 col-md-6">
                <div class="checkout_details_area mt-50 clearfix">

                    <div class="cart-page-heading mb-30">
                        <h5>Địa Chỉ Nhận Hàng</h5>
                    </div>

                    <form>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="first_name">Tên <span>*</span></label>
                                <input type="text" class="form-control" id="first_name" value="${address.surname}" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="last_name">Họ <span>*</span></label>
                                <input type="text" class="form-control" id="last_name" value="${address.name}" required>
                            </div>
                            <div class="col-12 mb-3">
                                <label for="company">Tên Công Ty</label>
                                <input type="text" class="form-control" id="company" value="">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="country1">Tỉnh/Thành Phố <span>*</span></label>
                                <input type="text" class="form-control" id="country1" value="${address.province}">

                            </div>
                            <div class="col-12 mb-3">
                                <label for="country2">Quận/Huyện <span>*</span></label>
                                <input type="text" class="form-control" id="country2" value="${address.province}">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="street_address">Địa Chỉ <span>*</span></label>
                                <input type="text" class="form-control mb-3" id="street_address" value="${address.district}">
                                <!--<input type="text" class="form-control" id="street_address2" value="">-->
                            </div>
                            <div class="col-12 mb-3">
                                <label for="phone_number">Số điện thoại <span>*</span></label>
                                <input type="number" class="form-control" id="phone_number" min="0" value="${address.phone}">
                            </div>
                            <div class="col-12 mb-4">
                                <label for="email_address">Email <span>*</span></label>
                                <input type="email" class="form-control" id="email_address" value="${account.email}">
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-5 ml-lg-auto">
                <div class="order-details-confirmation">

                    <div class="cart-page-heading">
                        <h5>Đơn đặt hàng</h5>
                        <p>Thông tin đơn hàng</p>
                    </div>

                    <ul class="order-details-form mb-4">
                        <li><span>Sản phẩm</span> <span>Tổng tiền</span></li>
                        <%for (Product p : danhSachSanPham) {%>
                        <li><span><%=p.getProduct_name()%><br>Số lượng: <%=p.getQuantitySold()%><br>Size: <%=p.getSize()%><br>Color: <%=p.getColor()%></span> <span><%=p.totalPriceSold()%></span></li>
                        <%}%>
                     <li><span><!--   Cocktail Yellow dress--></span> <span><!--$59.90--></span></li>
                        <li><span>Giá tiền</span> <span><%=giohang.getTotalMoneyCart()%></span></li>
                        <li><span>Vận chuyển</span> <span><%=giohang.getFeeShip()%></span></li>
                        <li><span>Khuyến mãi</span> <span>-<%=giohang.getFeePromotion()%>%</span></li>
                        <li><span>Tổng tiền</span> <span><%=giohang.getFinalMoneyCart()%></span></li>
                    </ul>
                    <a id="order" class="btn essence-btn">Đặt hàng</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Checkout Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<%@include file="footer.jsp" %>
<!-- ##### Footer Area End ##### -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script>
    $(document).ready(function () {
        var ho = $("#first_name").val().trim();
        var ten = $("#last_name").val().trim();
        var cty = $("#company").val().trim();
        var tinh = $("#country1").val().trim();
        var huyen = $("#country2").val().trim();
        var diachi = $("#street_address").val().trim();
        var sdt = $("#phone_number").val().trim();
        var email = $("#email_address").val().trim();
        $("#order").on('click', function () {
                alert("active")
                $.ajax({
                    url: '/project_LTW_war/doOrder',
                    type: 'POST',
                    data: {
                        updateHo: ho,
                        updateTen: ten,
                        updateCty: cty,
                        updateTinh: tinh,
                        updateHuyen: huyen,
                        updateDiachi: diachi,
                        updateSdt: sdt,
                        updateEmail: email
                    },
                    success: function (data) {

                        window.location="http://localhost:8080/project_LTW_war/home";

                    }
                })

        })


    })


</script>
<script>
    window.onload = function () {
        $.ajax({
            url: '/project_LTW_war/showCartArea',
            type: 'get',
            data: {},
            success: function (data) {
                // var row = document.getElementById("context");
                // var text = $("#context").html();
                // $("#context").html(data);

            },
            error: function (xhr) {

            }
        })
    };

    var num = <%if (cart == null) {%>
        0
    <%} else {%>
    <%=cart.getNumberProductInCart()%>
    <%}%>
</script>
<!-- jQuery (Necessary for All JavaScript Plugins) -->
<script src="assets/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="assets/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<%--<script src="assets/js/plugins.js"></script>--%>
<!-- Classy Nav js -->
<script src="assets/js/classy-nav.min.js"></script>
<!-- Active js -->
<script src="assets/js/active.js"></script>

</body>

</html>