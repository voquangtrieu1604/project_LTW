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
    <title>Danh sách yêu thích</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/css/custom-theme-min.css">

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!--    <link rel="stylesheet" href="css/core-style.css">-->
<!--    <link rel="stylesheet" href="css/custom-theme-min.css">-->

<!--    <link rel="stylesheet" href="css/style.css">-->
<!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>-->

<!--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">-->
<!--    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet">-->
<!--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>-->

</head>
<style>

</style>

<body class="account customer-address-form page-layout-2columns-left">
<!-- ##### Header Area Start ##### -->
<%@include file="header.jsp" %>
<!-- ##### Header Area End ##### -->

<!-- ##### Right Side Cart Area ##### -->
<div class="cart-bg-overlay"></div>


<div class="right-side-cart-area">

    <!-- Cart Button -->
    <div class="cart-button">
        <a href="#" id="rightSideCart"><img src="assets/img/core-img/bag.svg" alt=""> <span>3</span></a>
    </div>

    <div class="cart-content d-flex">

        <!-- Cart List Area -->
        <div class="cart-list">
            <!-- Single Cart Item -->
            <div class="single-cart-item">
                <a href="#" class="product-image">
                    <img src="assets/img/product/product-1-1.jpg" class="cart-thumb" alt="">
                    <!-- Cart Item Desc -->
                    <div class="cart-item-desc">
                        <span class="product-remove"><i class="fa fa-close" aria-hidden="true"></i></span>
                        <span class="badge">ÁO SƠ MI</span>
                        <h6>ÁO SƠ MI DÀI TAY - AR91008D2</h6>
                        <p class="size">Size: M</p>
                        <p class="color">Màu: Trắng</p>
                        <p class="price">299.000 ₫</p>
                    </div>
                </a>
            </div>

            <!-- Single Cart Item -->
            <div class="single-cart-item">
                <a href="#" class="product-image">
                    <img src="assets/img/product/product-9-1.jpg" class="cart-thumb" alt="">
                    <!-- Cart Item Desc -->
                    <div class="cart-item-desc">
                        <span class="product-remove"><i class="fa fa-close" aria-hidden="true"></i></span>
                        <span class="badge">ÁO BLAZER</span>
                        <h6>ÁO BLAZER - BL91654-BBU</h6>
                        <p class="size">Size: L</p>
                        <p class="color">Màu: Xanh</p>
                        <p class="price">900.000 ₫</p>
                    </div>
                </a>
            </div>

            <!-- Single Cart Item -->
            <div class="single-cart-item">
                <a href="#" class="product-image">
                    <img src="assets/img/product/product-7-1.jpg" class="cart-thumb" alt="">
                    <!-- Cart Item Desc -->
                    <div class="cart-item-desc">
                        <span class="product-remove"><i class="fa fa-close" aria-hidden="true"></i></span>
                        <span class="badge">ÁO HOODIE</span>
                        <h6>ÁO HOODIES - TSD81518</h6>
                        <p class="size">Size: M</p>
                        <p class="color">Màu: Đen</p>
                        <p class="price">370.000 ₫</p>
                    </div>
                </a>
            </div>
        </div>

        <!-- Cart Summary -->
        <div class="cart-amount-summary">

            <h2>Summary</h2>
            <ul class="summary-table">
                <li><span>Tạm tính:</span> <span>1.5769.000 ₫</span></li>
                <li><span>Phí vận chuyển:</span> <span>Free</span></li>
                <li><span>Khuyến mãi:</span> <span>-0%</span></li>
                <li><span>Tổng:</span> <span>1.5769.000 ₫</span></li>
            </ul>
            <div class="checkout-btn mt-100">
                <a href="checkout.jsp" class="btn essence-btn">thanh toán</a>
            </div>
        </div>
    </div>
</div>
<!-- ##### Right Side Cart End ##### -->

<!-- ##### Breadcumb Area Start ##### -->
<div class="breadcumb_area bg-img" style="background-image: url(assets/img/bg-img/breadcumb.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="page-title text-center">
                    <h2>tài khoản</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Breadcumb Area End ##### -->
<div class="container">


    <div class="row profile">
        <div class="col-md-3">
            <div class="profile-sidebar">
                <!-- <div class="profile-userpic"> <img
                            src="https://hocwebgiare.com/thiet_ke_web_chuan_demo/bootstrap_user_profile/images/profile_user.jpg"
                            class="img-responsive" alt="Thông tin cá nhân">
                    </div> -->
                <div class="profile-usertitle">
                    <div class="profile-usertitle-hello"> TÀI KHOẢN</div>
                    <div class="profile-usertitle-name"> Xin chào, <span class="name"><%=ua.getUser_name()%></span></div>
                </div>

                <div class="profile-usermenu">
                    <ul class=" items">
                        <!-- <div class="logo_menuchinh"
                                style="float:left; padding-top:5px; padding-left:10px; color:#fff; margin-left:auto; margin-right:auto; text-align: center; line-height:40px; font-size:16px;font-weight:bold;font-family:Arial">
                                HOCWEBGIARE.COM
                            </div> -->
                        <!-- <div class="menu-icon"><span>Menu</span></div> -->
                        <li class=" item "><a href="myacc.jsp"> <i class="glyphicon fas fa-question-circle"></i>
                            Thông
                            tin tài khoản </a>
                        </li>
                        <li class=" item "><a href="account_Address.jsp"> <i
                                class="glyphicon fas fa-map-marker-alt"></i>
                            Địa chỉ nhận hàng</a>
                        </li>
                        <li class=" item "><a href="myorder.jsp" > <i
                                class="glyphicon fas fa-shopping-cart"></i> Quản lý đơn hàng </a>
                        </li>
                        <li class=" item active"><a href="wishlist.jsp"> <i class="glyphicon far fa-heart"></i> Danh
                            sách
                            yêu
                            thích </a>
                        </li>


                    </ul>
                </div>
            </div>
        </div>
        <div class="column main ">

            <div class="shop_grid_product_area">
                <div class="row">
                    <div class="col-12">
                        <div class="product-topbar d-flex align-items-center justify-content-between">
                            <!-- Total Products -->
                            <jsp:useBean id="wishlistproducts" scope="request"
                                         type="java.util.List"
                            />
                            <div class="total-products">
                                <p><span id="total">${wishlistproducts.size()}</span> sản phẩm được tìm thấy</p>
                            </div>
                            <!-- Sorting -->
                            <div class="product-sorting d-flex">
                                <p>Sắp xếp theo:</p>
                                <form action="#" method="get">
                                    <select name="select" id="sortByselect">
                                        <option value="value">Bán chạy nhất</option>
                                        <option value="value">Theo bảng chữ cái từ A-Z</option>
                                        <option value="value">Theo bảng chữ cái từ Z-A</option>
                                        <option value="value">Giá từ thấp tới cao</option>
                                        <option value="value">Giá từ cao tới thấp</option>
                                        <option value="value">Mới nhất</option>
                                        <option value="value">Cũ nhất</option>
                                    </select>
                                    <input type="submit" class="d-none" value="">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" id="context">
                    <%System.out.println(wishlistproducts.size() + "___________"); %>
                    <c:forEach var="p" items="${wishlistproducts}">
                    <!-- Single Product -->
                    <div class="col-12 col-sm-6 col-lg-4" id=${p.id_product}>
                        <div class="single-product-wrapper">
                            <!-- Product Image -->
                            <div class="product-img">
                                <img src="${p.img_url}" alt="">
                                <!-- Hover Thumb -->
                                <img class="hover-img" src="assets/img/product/product-1-2.jpg" alt="">

                                <!-- Product Badge -->
                                <div class="product-badge offer-badge">
                                    <span>-40%</span>
                                </div>
                                <!-- Favourite -->
                                <div class="product-favourite" id="heart">
                                    <a id="${p.id_product}" onclick="clickheart(this)" class="favme fa fa-heart active" pid=${p.id_product}></a>
                                </div>
                            </div>

                            <!-- Product discription -->
                            <div class="product-discription">
                                <span>Áo sơ mi</span>
                                <a href="single-product-details.jsp">
                                    <h6>${p.product_name}</h6>
                                </a>
                                <p class="product-price"><span class="old-price">498.000 ₫</span> ${p.price} ₫</p>

                                <!-- Hover Content -->
                                <div class="hover-content">
                                    <!-- Add to Cart -->
                                    <div class="add-to-cart-btn">
                                        <a href="#" class="btn essence-btn">Thêm vào giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <!-- Pagination -->
            <nav aria-label="navigation">
                <ul class="pagination mt-50 mb-70">
                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#" id="hau">1</a></li>
                    <!--                        <li class="page-item"><a class="page-link" href="#">2</a></li>-->
                    <!--                        <li class="page-item"><a class="page-link" href="#">3</a></li>-->
                    <!--                        <li class="page-item"><a class="page-link" href="#">...</a></li>-->
                    <!--                        <li class="page-item"><a class="page-link" href="#">21</a></li>-->
                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                </ul>
            </nav>


        </div>
    </div>

</div>

<!-- ##### Footer Area Start ##### -->
<footer class="footer_area clearfix">
    <div class="container">
        <div class="row">
            <!-- Single Widget Area -->
            <div class="col-12 col-md-6">
                <div class="single_widget_area d-flex mb-30">
                    <!-- Logo -->
                    <div class="footer-logo mr-50">
                        <a href="index.jsp"><img
                                src="https://owen.vn/static/version1638932364/frontend/Owen/owen2021/vi_VN/images/logo-footer.svg"
                                alt=""></a>
                    </div>
                    <!-- Footer Menu -->
                    <div class="footer_menu">
                        <ul>
                            <li><a href="shop.jsp">Shop</a></li>
                            <li><a href="blog.jsp">Blog</a></li>
                            <li><a href="contact.jsp">Liên Hệ - Cửa Hàng</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Single Widget Area -->
            <div class="col-12 col-md-6">
                <div class="single_widget_area mb-30">
                    <ul class="footer_widget_menu">
                        <li><a href="#">Tình trạng đặt hàng</a></li>
                        <li><a href="#">Các lựa chọn thanh toán</a></li>
                        <li><a href="#">Vận chuyển và giao hàng</a></li>
                        <li><a href="#">Hướng dẫn</a></li>
                        <li><a href="#">Chính sách bảo mật</a></li>
                        <li><a href="#">Điều khoản sử dụng</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="row align-items-end">
            <!-- Single Widget Area -->
            <div class="col-12 col-md-6">
                <div class="single_widget_area">
                    <div class="footer_heading mb-30">
                        <h6>ĐĂNG KÝ NHẬN BẢN TIN</h6>
                    </div>
                    <div class="subscribtion_form">
                        <form action="#" method="post">
                            <input type="email" name="mail" class="mail" placeholder="Nhập email của bạn">
                            <button type="submit" class="submit"><i class="fa fa-long-arrow-right"
                                                                    aria-hidden="true"></i></button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Single Widget Area -->
            <div class="col-12 col-md-6">
                <div class="single_widget_area">
                    <div class="footer_social_area">
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i
                                class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i
                                class="fa fa-instagram" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter"
                                                                                                  aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i
                                class="fa fa-pinterest" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Youtube"><i
                                class="fa fa-youtube-play" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-12 text-center">
                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    © 2020 by Kowil Fashion - Phú Thái Holdings
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
            </div>
        </div>

    </div>


</footer>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script>
    $(document).ready(function () {
        $("#sortByselect").change(function () {
            var selected = $(this).find(":selected").text();
            $.ajax({
                url: '/project_LTW_war/sortListProductFavortite',
                type: 'get',
                data:{
                    select: selected
                },
                success: function (data) {
                    // var row = document.getElementById("context");
                    // var text = $("#context").html();
                    $("#context").html(data);

                },
                error: function (xhr) {

                }
            })
        })
    })


</script>
<script>
    // $(document).ready(function () {
        function clickheart(idProduct) {
            alert(idProduct.id)
            var id=idProduct.id;
            $.ajax({
                url: '/project_LTW_war/removeFavoriteProduct',
                type: 'POST',
                data:{
                    id: id
                },
                success: function (data) {
                    document.getElementById(id).remove();
                    var oldval = $("#total").html();
                    var newval = Number(oldval)-1;
                    $("#total").html(newval);

                }
            })
    }

</script>
<!-- ##### Footer Area End ##### -->

<!-- jQuery (Necessary for All JavaScript Plugins) -->
<script src="assets/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="assets/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<!-- <script src="js/plugins.js"></script> -->
<!-- Classy Nav js -->
<script src="assets/js/classy-nav.min.js"></script>
<!-- Active js -->
<script src="assets/js/active.js"></script>

</body>

</html>