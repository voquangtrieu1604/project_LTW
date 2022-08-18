<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.Product" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<% Product product = (Product) request.getAttribute("product");%>
<% User user = (User) request.getAttribute("ua");%>
<head>
    <meta charset="UTF-8">
    <meta name="discription" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title><%=product.getProduct_name()%></title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/css/alertfy.css">


</head>

<body>

<!-- ##### Header Area Start ##### -->
<%@include file="header.jsp" %>
<!-- ##### Header Area End ##### -->

<!-- ##### Right Side Cart Area ##### -->
<%@include file="cartArea.jsp" %>
<!-- ##### Right Side Cart End ##### -->

<!-- ##### Single Product Details Area Start ##### -->
<section class="single_product_details_area d-flex align-items-center">

    <!-- Single Product Thumb -->
    <div class="single_product_thumb clearfix">
        <div class="product_thumbnail_slides owl-carousel">
            <img src="<%=product.getImg_url()%>" alt="">
            <img src="<%=product.getImg_url2()%>" alt="">
        </div>
    </div>

    <!-- Single Product discription -->
    <div class="single_product_desc clearfix">
        <span>áo sơ mi</span>
        <a href="#">
            <h2><%=product.getProduct_name()%>
            </h2>
        </a>
        <p class="product-price"><span
                class="old-price"><%=product.getPrice()%></span> <%=product.getPrice() - (product.getPrice() * product.getPercent_discount() / 100)%>
        </p>
        <p class="product-desc"><%=product.getDescription()%>
        </p>

        <!-- Form -->
        <form class="cart-form clearfix" method="post">
            <!-- Select Box -->
            <div class="select-box d-flex mt-50 mb-30">
                <select name="select" id="productSize" class="mr-5">
                    <option value="XL">Size: XL</option>
                    <option value="X">Size: X</option>
                    <option value="M">Size: M</option>
                    <option value="S">Size: S</option>
                </select>
                <select name="select" id="productColor">
                    <option value="đen">Màu: Đen</option>
                    <option value="trắng">Màu: Trắng</option>
                    <option value="đỏ">Màu: Đỏ</option>
                    <option value="xanh">Màu: Xanh</option>
                </select>
            </div>
            <!-- Cart & Favourite Box -->
        </form>
        <div class="cart-fav-box d-flex align-items-center">
            <!-- Cart -->
            <a id="addCart" <%if (user==null) {%>href="/project_LTW_war/login"<%} else {%><%}%>>
                <button  type="submit" name="addtocart" value="5" class="btn essence-btn">Thêm vào giỏ hàng</button>
            </a>

            <!-- Favourite -->
            <div class="product-favourite ml-4">
                <a href="#" class="favme fa fa-heart"></a>
            </div>
        </div>
    </div>
</section>
<!-- ##### Single Product Details Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<%@include file="footer.jsp" %>
<!-- ##### Footer Area End ##### -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src="assets/js/Alertify.js"></script>
<script>
    <%if (user==null) {%>
    <%} else {%>

    var num = "<%=cart.getNumberProductInCart()%>";
    $(document).ready(function () {
        $("#addCart").click(function () {
            // if (iduser != null) {
            var color = $("#productColor").val();

            var size = $("#productSize").val();

            var id = "<%=product.getId_product()%>";
            $.ajax({
                url: '/project_LTW_war/addProductToCart',
                type: 'post',
                data: {
                    colorProduct: color,
                    sizeProduct: size,
                    id: id
                },
                success: function (data) {
                    $("#listCart").html(data);
                    updateNum();
                },
                error: function (xhr) {

                }
            })

            // }

        })






    })


    <%}%>

</script>

<script>
    var num = "<%=cart.getNumberProductInCart()%>";
    function removeThisProduct(idProduct) {
        var id=idProduct.id;
        $.ajax({
            url: '/project_LTW_war/removeProductFromCart',
            type: 'post',
            data:{
                id: id
            },
            success: function (data) {
                $("#listCart").html(data);
                // $("#numberProductCartHeader").html(num);
                // $("#numberProductCart").html(num);
                updateNum()
            },
            error: function (xhr) {

            }
        })
    }

    function updateNum() {
        $.ajax({
            url: '/project_LTW_war/updateNumberCart',
            type: 'get',
            data:{
                // id: idProduct
            },
            success: function (data) {
                $("#numberProductCartHeader").html(data);
                $("#numberProductCart").html(data);
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
<script src="assets/js/classy-nav.min.js"></script>
<!-- Active js -->
<script src="assets/js/active.js"></script>

</body>

</html>