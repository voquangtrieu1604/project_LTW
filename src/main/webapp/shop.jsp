<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<% List<Product> products = (List<Product>) request.getAttribute("productsForSale");
%>
<% User user = (User) session.getAttribute("auth");%>
<head>
    <meta charset="UTF-8">
    <meta name="discription" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Áo - Áo thời trang nam</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <script>

    </script>
</head>

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
                    <h2>SẢN PHẨM</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Breadcumb Area End ##### -->

<!-- ##### Shop Grid Area Start ##### -->
<section class="shop_grid_area section-padding-80">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-4 col-lg-3">
                <div class="shop_sidebar_area">

                    <!-- ##### Single Widget ##### -->
                    <div class="widget catagory mb-50">
                        <!-- Widget Title -->
                        <h6 class="widget-title mb-30">Thể loại</h6>

                        <!--  Catagories  -->
                        <div class="catagories-menu">
                            <ul id="menu-content2" class="menu-content collapse show">
                                <!-- Single Item -->
                                <li data-toggle="collapse" data-target="#clothing">
                                    <a href="#">áo</a>
                                    <ul class="sub-menu collapse show" id="clothing">
                                        <li><a href="#">Tất cả</a></li>
                                        <li><a href="#">Áo Jacket</a></li>
                                        <li><a href="#">Áo Sơ Mi</a></li>
                                        <li><a href="#">Áo Hoodie</a></li>
                                        <li><a href="#">Áo Veston</a></li>
                                        <li><a href="#">Áo Blazer</a></li>
                                        <li><a href="#">Áo Thun</a></li>
                                        <li><a href="#">Áo Polo</a></li>

                                    </ul>
                                </li>
                                <!-- Single Item -->
                                <li data-toggle="collapse" data-target="#shoes" class="collapsed">
                                    <a href="#">quần</a>
                                    <ul class="sub-menu collapse" id="shoes">
                                        <li><a href="#">Tất Cả</a></li>
                                        <li><a href="#">Quần Tây</a></li>
                                        <li><a href="#">Quần Khaki</a></li>
                                        <li><a href="#">Quần Jeans</a></li>
                                        <li><a href="#">Quần Short</a></li>
                                        <li><a href="#">Quần Jogger</a></li>
                                    </ul>
                                </li>
                                <!-- Single Item -->
                                <li data-toggle="collapse" data-target="#accessories" class="collapsed">
                                    <a href="#">phụ kiện</a>
                                    <ul class="sub-menu collapse" id="accessories">
                                        <li><a href="#">Tất Cả</a></li>
                                        <li><a href="#">Đồ lót</a></li>
                                        <li><a href="#">Tất</a></li>
                                        <li><a href="#">Dây Lưng</a></li>
                                        <li><a href="#">Ví Da</a></li>
                                        <li><a href="#">Cà Vạt</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <!-- ##### Single Widget ##### -->
                    <div class="widget price mb-50">
                        <!-- Widget Title -->
                        <h6 class="widget-title mb-30">Bộ lọc</h6>
                        <!-- Widget Title 2 -->
                        <p class="widget-title2 mb-30">Giá</p>

                        <div class="widget-desc">
                            <form method="post" action="ShopLocGia" style="margin-bottom: 50px">
                                <input type="number" name="min_price" id="min_price" style="margin-bottom: 10px"
                                       required placeholder="0">
                                <input type="number" name="max_price" id="max_price" style="margin-bottom: 10px"
                                       required placeholder="9.999.999">
                                <input  type="submit" name="filter_price" value="Lọc Giá" class="btn btn-default">

                            </form>
                        </div>
                    </div>

                    <!-- ##### Single Widget ##### -->
                    <div class="widget color mb-50">
                        <!-- Widget Title 2 -->
                        <p class="widget-title2 mb-30">Color</p>
                        <div class="widget-desc">
                            <ul class="d-flex">
                                <li><a href="#" class="color1"></a></li>
                                <li><a href="#" class="color2"></a></li>
                                <li><a href="#" class="color3"></a></li>
                                <li><a href="#" class="color4"></a></li>
                                <li><a href="#" class="color5"></a></li>
                                <li><a href="#" class="color6"></a></li>
                                <li><a href="#" class="color7"></a></li>
                                <li><a href="#" class="color8"></a></li>
                                <li><a href="#" class="color9"></a></li>
                                <li><a href="#" class="color10"></a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- ##### Single Widget ##### -->
                    <!--                        <div class="widget brands mb-50">-->
                    <!--                            &lt;!&ndash; Widget Title 2 &ndash;&gt;-->
                    <!--                            <p class="widget-title2 mb-30">Brands</p>-->
                    <!--                            <div class="widget-desc">-->
                    <!--                                <ul>-->
                    <!--                                    <li><a href="#">Asos</a></li>-->
                    <!--                                    <li><a href="#">Mango</a></li>-->
                    <!--                                    <li><a href="#">River Island</a></li>-->
                    <!--                                    <li><a href="#">Topshop</a></li>-->
                    <!--                                    <li><a href="#">Zara</a></li>-->
                    <!--                                </ul>-->
                    <!--                            </div>-->
                    <!--                        </div>-->
                </div>
            </div>

            <div class="col-12 col-md-8 col-lg-9">

                <div class="shop_grid_product_area">
                    <div class="row">
                        <div class="col-12">
                            <div class="product-topbar d-flex align-items-center justify-content-between">
                                <!-- Total Products -->

                                <div class="total-products">

                                    <p><span> ${count}</span> sản phẩm được tìm thấy</p>

                                </div>

                                <!-- Sorting -->
                                <div class="product-sorting d-flex">
                                    <p>Sắp xếp theo:</p>
                                    <form action="Shop" method="post">
                                        <select name="select" id="sortByselect" onchange="location = this.value;">
                                            <option value="Shop">Bán chạy nhất</option>
                                            <option value="${sort}_sort_title_ascending">Theo bảng chữ cái từ A-Z
                                            </option>
                                            <option value="${sort}_sort_title_descending">Theo bảng chữ cái từ Z-A
                                            </option>
                                            <option value="${sort}_sort_price_ascending">Giá từ thấp tới cao</option>
                                            <option value="${sort}_sort_price_descending">Giá từ cao tới thấp</option>
                                        </select>
                                        <input type="submit" class="d-none" value="">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <c:forEach items="${listProduct}" var="p">

                            <!-- Single Product -->
                            <a href="ChiTietSanPham?id_product=${p.id_product}">
                                <div class="col-12 col-sm-6 col-lg-4" style="max-height: 500px">
                                    <div class="single-product-wrapper">
                                        <!-- Product Image -->
                                        <div class="product-img" style="height: 350px; max-height: 350px">
                                            <img src="${p.img_url}" alt="">
                                            <!-- Hover Thumb -->
                                            <img class="hover-img" src="${p.img_url2}" alt="">

                                            <!-- Product Badge -->
                                            <div class="product-badge offer-badge">
                                                <span>${p.percent_discount}%</span>
                                            </div>
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
                                            </div>
                                        </div>

                                        <!-- Product discription -->
                                        <div class="product-discription">
                                            <span>${p.product_type}</span>

                                            <h6>${p.product_name}
                                            </h6>

                                            <p class="product-price"><span
                                                    class="old-price">${p.price}</span>${p.price * (100 - p.percent_discount) / 100.0}
                                            </p>
                                            <!-- Hover Content -->
                                            <div class="hover-content">
                                                <!-- Add to Cart -->
                                                <div class="add-to-cart-btn">
                                                    <a href="ChiTietSanPham?id_product=${p.id_product}" class="btn essence-btn">Mua ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </c:forEach>
                    </div>
                </div>
                <!-- Pagination -->
                <nav aria-label="navigation">
                    <ul class="pagination mt-50 mb-70">
<%--                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a>--%>
                        </li>
                        <c:forEach begin="1" end="${endPage}" var="i">
                            <li class="page-item"><a class="page-link" href="?index=${i}">${i}</a></li>
                        </c:forEach>
<%--                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>--%>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- ##### Shop Grid Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<%@include file="footer.jsp" %>
<!-- ##### Footer Area End ##### -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script>
    <%if (user==null) {%>
    <%} else {%>
    $(document).ready(function () {
        $("#heart a").on('click', function () {
            if (this.classList.contains("active")) {
                alert("active")
                var id = $(this).attr("pid");
                alert(id)
                $.ajax({
                    url: '/project_LTW_war/addFavoriteProduct',
                    type: 'POST',
                    data: {
                        id: id
                    },
                    success: function (data) {


                    }
                })
            } else {
                alert("noactive")
                var id = $(this).attr("pid");
                alert(id)
                $.ajax({
                    url: '/project_LTW_war/removeFavoriteProduct',
                    type: 'POST',
                    data: {
                        id: id
                    },
                    success: function (data) {
                        // document.getElementById(id).remove();
                    }
                })

            }
        })


    })
    <%}%>

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
<script src="assets/js/plugins.js"></script>
<!-- Classy Nav js -->
<script src="assets/js/classy-nav.min.js"></script>
<!-- Active js -->
<script src="assets/js/active.js"></script>

<script src="assets/js/removecartarea.js"></script>
</body>

</html>