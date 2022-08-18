<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.Blog" %>
<%@ page import="java.util.List" %>
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
    <title>OWEN - Cart</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/style.css">
    <link rel="stylesheet" href="assets/css/cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<% List<Product> danhSachSanPham = (List<Product>) request.getAttribute("listProductCart");%>
<% Cart giohang = (Cart) request.getAttribute("giohang");%>

<body>
<!-- ##### Header Area Start ##### -->
<%@include file="header.jsp" %>
<!-- ##### Header Area End ##### -->

<!-- ##### Right Side Cart Area ##### -->
<div class="cart-bg-overlay"></div>


<%@include file="cartArea.jsp" %>
<!-- ##### Right Side Cart End ##### -->

<!-- ##### Breadcumb Area Start ##### -->
<div class="breadcumb_area breadcumb-style-two bg-img" style="background-image: url(assets/img/bg-img/breadcumb2.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="page-title text-center">
                    <h2>Cart</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Breadcumb Area End ##### -->
<!-- cart -->
<div class="cart-section mt-150 mb-150">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="cart-table-wrap">
                    <table class="cart-table">
                        <thead class="cart-table-head">
                        <tr class="table-head-row">
                            <th class="product-remove"></th>
                            <th class="product-image">Ảnh sản phẩm</th>
                            <th class="product-name">Tên</th>
                            <th class="product-price">Giá</th>
                            <th class="product-quantity">Số lượng</th>
                            <th class="product-total">Thành tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%for (Product p : danhSachSanPham) {%>
                        <tr class="table-body-row" id="row<%=p.getId_product()%><%=p.getSize()%><%=p.getColor()%>">
                            <td class="product-remove"><a
                                                          id="<%=p.getId_product()%><%=p.getSize()%><%=p.getColor()%>"
                                                          onclick="clickPin(this)"><i class="fa fa-trash"></i></a></td>
                            <td class="product-image"><img src="<%=p.getImg_url()%>" alt=""></td>
                            <td class="product-name"><%=p.getProduct_name()%><br> Màu: <%=p.getColor()%> <br>
                                Size: <%=p.getSize()%>
                            </td>
                            <td class="product-price"><%=p.getPrice()%> ₫</td>
                            <td class="product-quantity"><input type="number" placeholder="1"></td>
                            <td class="product-total"><%=p.totalPriceSold()%> ₫</td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="total-section">
                    <div id="tableTotal">
                        <table class="total-table">
                            <thead class="total-table-head">
                            <tr class="table-total-row">
                                <th>Tổng cộng</th>
                                <th>Giá</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="total-data">
                                <td><strong>Tạm tính: </strong></td>
                                <td><%=giohang.getTotalMoneyCart()%> đ</td>
                            </tr>
                            <tr class="total-data">
                                <td><strong>Tiền ship: </strong></td>
                                <td><%=giohang.getFeeShip()%> đ</td>
                            </tr>
                            <tr class="total-data">
                                <td><strong>Khuyến mải: </strong></td>
                                <td>-<%=giohang.getFeePromotion()%>%</td>
                            </tr>
                            <tr class="total-data">
                                <td><strong>Tất cả: </strong></td>
                                <td><%=cart.getFinalMoneyCart()%> đ</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="cart-buttons">
                            <a href="/project_LTW_war/Shop" class="boxed-btn">Tiếp tục mua</a>
                            <a href="/project_LTW_war/showOrder" class="boxed-btn black">Đặt hàng</a>
                        </div>
                    </div>
                </div>
                <div class="coupon-section">
                    <h3>Apply Coupon</h3>
                    <div class="coupon-form-wrap">
                        <form action="index.html">
                            <p><input type="text" placeholder="Coupon"></p>
                            <p><input type="submit" value="Apply"></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end cart -->
<!-- ##### Cart Wrapper Area Start ##### -->

<!-- ##### Cart Wrapper Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<%@include file="footer.jsp" %>
<!-- ##### Footer Area End ##### -->

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script>
    <%--var num = "<%=cart.getNumberProductInCart()%>";--%>
    <%--&lt;%&ndash;var iduser =<%=user%>;&ndash;%&gt;--%>
    <%--$(document).ready(function () {--%>
    <%--    alert("hau")--%>
    <%--    $("#addCart").click(function () {--%>
    <%--        alert("click")--%>
    <%--        // if (iduser != null) {--%>
    <%--        var color = $("#productColor").val();--%>
    <%--        alert(color)--%>
    <%--        var size = $("#productSize").val();--%>
    <%--        alert(size)--%>
    <%--        var id = "<%=product.getId_product()%>";--%>
    <%--        $.ajax({--%>
    <%--            url: '/project_LTW_war/addProductToCart',--%>
    <%--            type: 'post',--%>
    <%--            data: {--%>
    <%--                colorProduct: color,--%>
    <%--                sizeProduct: size,--%>
    <%--                id: id--%>
    <%--            },--%>
    <%--            success: function (data) {--%>
    <%--                alert("hau")--%>

    <%--                $("#listCart").html(data);--%>
    <%--                num++--%>
    <%--                $("#numberProductCartHeader").html(num);--%>
    <%--                $("#numberProductCart").html(num);--%>
    <%--            },--%>
    <%--            error: function (xhr) {--%>

    <%--            }--%>
    <%--        })--%>

    <%--        // }--%>

    <%--    })--%>



    <%--})--%>
</script>

<script>
    var num = "<%=cart.getNumberProductInCart()%>";

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

        var id= "#row"+ idProduct.id;
        $(id).remove();
        $.ajax({
            url: '/project_LTW_war/delProductFromMainCart',
            type: 'post',
            data: {
                id: id
            },
            success: function (data) {
                $("#tableTotal").html(data);
            },
            error: function (xhr) {

            }
        })
    }

    function clickPin(idProduct) {
        removeThisProduct(idProduct);
        var id= "#row"+ idProduct.id;
        $(id).remove();
        var id = idProduct.id;
        $.ajax({
            url: '/project_LTW_war/delProductFromMainCart',
            type: 'post',
            data: {
                id: id
            },
            success: function (data) {
                $("#tableTotal").html(data);
            },
            error: function (xhr) {

            }
        })


    }
</script>

<!-- jQuery (Necessary for All JavaScript Plugins) -->
<script src="assets/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="assets/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="assets/js/plugins.js"></script>
<!-- Classy Nav js -->
<script src=assets/"js/classy-nav.min.js"></script>
<!-- Active js -->
<script src="assets/js/active.js"></script>

</body>

</html>