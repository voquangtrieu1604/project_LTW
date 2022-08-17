<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.User" %>
<%@ page import="java.util.List" %>
<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.hcmuaf.edu.fit.project_ltw.services.WishListService" %>
<%@ page import="edu.hcmuaf.edu.fit.project_ltw.dao.WishListDao" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="discription" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Owen Fashion - Lịch lãm thời trang</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
<%--    <link rel="stylesheet" href="style.css">--%>

</head>
<style>


</style>

<body>
<!-- ##### Header Area Start ##### -->
<%@include file="header.jsp" %>
<!-- ##### Header Area End ##### -->

<!-- ##### Right Side Cart Area ##### -->
<%@include file="cartArea.jsp" %>
<!-- ##### Right Side Cart End ##### -->

<!-- ##### Welcome Area Start ##### -->

<section class="welcome_area bg-img background-overlay" style="background-image: url(assets/img/index/bg-1.jpg);">
    <a href="/Shop">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="hero-content">
                        <!--                        <h6>asoss</h6>-->
                        <!--                        <h2>New Collection</h2>-->
                        <!--                        <a href="#" class="btn essence-btn">view collection</a>-->
                    </div>
                </div>
            </div>
        </div>
    </a>
</section>

<!-- ##### Welcome Area End ##### -->

<!-- ##### Top Catagory Area Start ##### -->
<div class="top_catagory_area section-padding-80 clearfix">
    <div class="container">
        <div class="row justify-content-center">
            <!-- Single Catagory -->
            <div class="col-12 col-sm-6 col-md-4">
                <div class="single_catagory_area d-flex align-items-center justify-content-center bg-img"
                     style="background-image: url(assets/img/index/bg-2.jpg);">
                    <div class="catagory-content">
                        <a href="#">Áo</a>
                    </div>
                </div>
            </div>
            <!-- Single Catagory -->
            <div class="col-12 col-sm-6 col-md-4">
                <div class="single_catagory_area d-flex align-items-center justify-content-center bg-img"
                     style="background-image: url(assets/img/index/bg-3.jpg);">
                    <div class="catagory-content">
                        <a href="#">Quần</a>
                    </div>
                </div>
            </div>
            <!-- Single Catagory -->
            <div class="col-12 col-sm-6 col-md-4">
                <div class="single_catagory_area d-flex align-items-center justify-content-center bg-img"
                     style="background-image: url(assets/img/bg-img/bg-4.jpg);">
                    <div class="catagory-content">
                        <a href="#">Phụ kiện</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Top Catagory Area End ##### -->

<!-- ##### CTA Area Start ##### -->
<div class="cta-area">
    <a href="shop.jsp">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cta-content bg-img background-overlay"
                         style="background-image: url(assets/img/index/bg-5.jpg);">
                        <div class="h-100 d-flex align-items-center justify-content-end">
                            <div class="cta--text">
                                <!--                                <h6>-60%</h6>-->
                                <!--                                <h2>Global Sale</h2>-->
                                <!--                                <a href="#" class="btn essence-btn">Buy Now</a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </a>
</div>
<!-- ##### CTA Area End ##### -->

<!-- ##### New Arrivals Area Start ##### -->
<section class="new_arrivals_area section-padding-80 clearfix">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-heading text-center">
                    <h2>Sản phẩm bán chạy</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="popular-products-slides owl-carousel">
<%--                    <jsp:useBean id="products" scope="request"--%>
<%--                                 type="java.util.List"--%>
<%--                    />--%>
<%--                    <jsp:useBean id="wishlistid" scope="request"--%>
<%--                                 type="java.util.List"--%>
<%--                    />--%>
<%--                    <%System.out.println(products.size() + "___________"); %>--%>
                    <c:forEach var="p" items="${products}">
                    <!-- Single Product -->
                    <div class="single-product-wrapper">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="${p.img_url}" alt="">
                            <!-- Hover Thumb -->
                            <img class="hover-img" src="${p.img_url2}" alt="">
                            <!-- Favourite -->
                            <div class="product-favourite" id="heart">
                                <c:choose>
                                    <c:when test="${wishlistid.contains(p.id_product)}">
                                        <a class="favme fa fa-heart active" pid=${p.id_product}></a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="favme fa fa-heart " pid=${p.id_product}></a>
                                    </c:otherwise>
                                </c:choose>
<%--                                <a class="favme fa fa-heart " pid=${p.id_product}></a>--%>
                            </div>
                        </div>
                        <!-- Product discription -->
                        <div class="product-discription">
                            <span>áo jacket</span>
                            <a href="single-product-details.jsp">
                                <h6>${p.product_name}</h6>
                            </a>
                            <p class="product-price">${p.price}</p>

                            <!-- Hover Content -->
                            <div class="hover-content">
                                <!-- Add to Cart -->
                                <div class="add-to-cart-btn">
                                    <a href="#" class="btn essence-btn">Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ##### New Arrivals Area End ##### -->

<!-- ##### Brands Area Start ##### -->
<!--<div class="brands-area d-flex align-items-center justify-content-between">-->
<!--    &lt;!&ndash; Brand Logo &ndash;&gt;-->
<!--    <div class="single-brands-logo">-->
<!--        <img src="assets/img/core-img/brand1.png" alt="">-->
<!--    </div>-->
<!--    &lt;!&ndash; Brand Logo &ndash;&gt;-->
<!--    <div class="single-brands-logo">-->
<!--        <img src="assets/img/core-img/brand2.png" alt="">-->
<!--    </div>-->
<!--    &lt;!&ndash; Brand Logo &ndash;&gt;-->
<!--    <div class="single-brands-logo">-->
<!--        <img src="assets/img/core-img/brand3.png" alt="">-->
<!--    </div>-->
<!--    &lt;!&ndash; Brand Logo &ndash;&gt;-->
<!--    <div class="single-brands-logo">-->
<!--        <img src="assets/img/core-img/brand4.png" alt="">-->
<!--    </div>-->
<!--    &lt;!&ndash; Brand Logo &ndash;&gt;-->
<!--    <div class="single-brands-logo">-->
<!--        <img src="assets/img/core-img/brand5.png" alt="">-->
<!--    </div>-->
<!--    &lt;!&ndash; Brand Logo &ndash;&gt;-->
<!--    <div class="single-brands-logo">-->
<!--        <img src="assets/img/core-img/brand6.png" alt="">-->
<!--    </div>-->
<!--</div>-->
<!-- ##### Brands Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<%@include file="footer.jsp" %>
<!-- ##### Footer Area End ##### -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script>
    $(document).ready(function () {
        $("#heart a").on('click',function () {
            if (this.classList.contains("active")){
                alert("active")
                var id=$(this).attr("pid");
                alert(id)
                $.ajax({
                    url: '/project_LTW_war/addFavoriteProduct',
                    type: 'POST',
                    data:{
                        id: id
                    },
                    success: function (data) {


                    }
                })
            }
            else {
                alert("noactive")
                    var id=$(this).attr("pid");
                    alert(id)
                    $.ajax({
                        url: '/project_LTW_war/removeFavoriteProduct',
                        type: 'POST',
                        data:{
                            id: id
                        },
                        success: function (data) {
                            // document.getElementById(id).remove();
                        }
                    })

            }
        })


    })

</script>
<script>
    window.onload = function()
    {
        $.ajax({
            url: '/project_LTW_war/showCartArea',
            type: 'get',
            data:{

            },
            success: function (data) {
                // var row = document.getElementById("context");
                // var text = $("#context").html();
                // $("#context").html(data);

            },
            error: function (xhr) {

            }
        })
    };
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