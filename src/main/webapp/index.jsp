<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Owen Fashion - Lịch lãm thời trang</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="style.css">

</head>
<style>


</style>

<body>
<!-- ##### Header Area Start ##### -->
<header class="header_area">
    <div class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
        <!-- Classy Menu -->
        <nav class="classy-navbar" id="essenceNav">
            <!-- Logo -->
            <a class="nav-brand" href="index.jsp"><img
                    src="https://owen.vn/static/version1638932364/frontend/Owen/owen2021/vi_VN/images/logo.svg" alt=""></a>
            <!-- Navbar Toggler -->
            <div class="classy-navbar-toggler">
                <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>
            <!-- Menu -->
            <div class="classy-menu">
                <!-- close btn -->
                <div class="classycloseIcon">
                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                </div>
                <!-- Nav Start -->
                <div class="classynav">
                    <ul>
                        <li><a href="#">Thu Đông</a></li>
                        <li><a href="shop.jsp">Shop</a>
                            <div class="megamenu">
                                <ul class="single-mega cn-col-4">
                                    <li class="title">Á0</li>
                                    <li><a href="shop.jsp">Áo Jacket</a></li>
                                    <li><a href="shop.jsp">Áo Sơ Mi</a></li>
                                    <li><a href="shop.jsp">Áo Hoodie</a></li>
                                    <li><a href="shop.jsp">Áo Veston</a></li>
                                    <li><a href="shop.jsp">Áo Blazer</a></li>
                                    <li><a href="shop.jsp">Áo Thun</a></li>
                                    <li><a href="shop.jsp">Áo Polo</a></li>
                                </ul>
                                <ul class="single-mega cn-col-4">
                                    <li class="title">Quần</li>
                                    <li><a href="shop.jsp">Quần Tây</a></li>
                                    <li><a href="shop.jsp">Quần Joger</a></li>
                                    <li><a href="shop.jsp">Quần Khaki</a></li>
                                    <li><a href="shop.jsp">Quần Jeans</a></li>
                                    <li><a href="shop.jsp">Quần Short</a></li>
                                </ul>
                                <ul class="single-mega cn-col-4">
                                    <li class="title">Phụ Kiện</li>
                                    <li><a href="shop.jsp">Đồ Lót</a></li>
                                    <li><a href="shop.jsp">Tất</a></li>
                                    <li><a href="shop.jsp">Dây Lưng</a></li>
                                    <li><a href="shop.jsp">Ví Da</a></li>
                                    <li><a href="shop.jsp">Cà Vạt</a></li>
                                </ul>
                                <div class="single-mega cn-col-4">
                                    <img src="assets/img/bg-img/bg-6.jpg" alt="">
                                </div>
                            </div>
                        </li>
                        <!--                        <li><a href="#">Pages</a>-->
                        <!--                            <ul class="dropdown">-->
                        <!--                                <li><a href="index.jsp">Trang Chủ</a></li>-->
                        <!--                                <li><a href="shop.jsp">Shop</a></li>-->
                        <!--                                <li><a href="checkout.jsp">Thanh Toán</a></li>-->
                        <!--                                <li><a href="blog.jsp">Blog</a></li>-->
                        <!--                                <li><a href="regular-page.jsp">Giới Thiệu</a></li>-->
                        <!--                                <li><a href="contact.jsp">Liên Hệ - Cửa Hàng</a></li>-->
                        <!--                            </ul>-->
                        <!--                        </li>-->
                        <li><a href="shop.jsp">Giá Tốt</a></li>
                        <li><a href="blog.jsp">Blog</a></li>
                        <!--                        <li><a href="regular-page.jsp">Giới Thiệu</a></li>-->
                        <li><a href="contact.jsp">Liên Hệ</a></li>
                    </ul>
                </div>
                <!-- Nav End -->
            </div>
        </nav>

        <!-- Header Meta Data -->
        <div class="header-meta d-flex clearfix justify-content-end">
            <!-- Search Area -->
            <div class="search-area">
                <form action="#" method="post">
                    <input type="search" name="search" id="headerSearch" placeholder="Tìm kiếm...">
                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </form>
            </div>
            <!-- Favourite Area -->
            <div class="favourite-area">
                <a href="wishlist.jsp"><img src="assets/img/core-img/heart.svg" alt=""></a>
            </div>
            <!-- User Login Info -->
            <div class="my-account">
                <a href="#"><img src="assets/img/core-img/user.svg" alt=""></a>
                <ul class="header links">
                    <li><a href="myacc.jsp">Tài khoản của tôi</a></li>
                    <li class="link wishlist" data-bind="scope: 'wishlist'" data-role="wishlist-products-link"><a
                            href="wishlist.jsp">Danh sách yêu thích </a></li>
                    <li class="authorization-link" data-label="hoặc"><a
                            href="login.jsp">Đăng
                        nhập</a></li>
                    <li><a href="register.jsp">Tạo tài khoản</a></li>
                </ul>
            </div>

            <div class="cart-area">
                <a href="#" id="essenceCartBtn"><img src="assets/img/core-img/bag.svg" alt=""><span>3</span></a>
            </div>
        </div>

    </div>
</header>
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

<!-- ##### Welcome Area Start ##### -->

<section class="welcome_area bg-img background-overlay" style="background-image: url(assets/img/index/bg-1.jpg);">
    <a href="shop.jsp">
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

                    <!-- Single Product -->
                    <div class="single-product-wrapper">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="assets/img/index/product-1-1.jpg" alt="">
                            <!-- Hover Thumb -->
                            <img class="hover-img" src="assets/img/index/product-1-2.jpg" alt="">
                            <!-- Favourite -->
                            <div class="product-favourite">
                                <a href="#" class="favme fa fa-heart"></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <span>áo jacket</span>
                            <a href="single-product-details.jsp">
                                <h6>ÁO JACKET - JK61020</h6>
                            </a>
                            <p class="product-price">900.000 ₫</p>

                            <!-- Hover Content -->
                            <div class="hover-content">
                                <!-- Add to Cart -->
                                <div class="add-to-cart-btn">
                                    <a href="#" class="btn essence-btn">Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Product -->
                    <div class="single-product-wrapper">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="assets/img/index/product-2-1.jpg" alt="">
                            <!-- Hover Thumb -->
                            <img class="hover-img" src="assets/img/index/product-2-2.jpg" alt="">
                            <!-- Favourite -->
                            <div class="product-favourite">
                                <a href="#" class="favme fa fa-heart"></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <span>áo hoodie</span>
                            <a href="single-product-details.jsp">
                                <h6>ÁO HOODIE - HD23293</h6>
                            </a>
                            <p class="product-price">510.000 ₫</p>

                            <!-- Hover Content -->
                            <div class="hover-content">
                                <!-- Add to Cart -->
                                <div class="add-to-cart-btn">
                                    <a href="#" class="btn essence-btn">Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Product -->
                    <div class="single-product-wrapper">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="assets/img/index/product-3-1.jpg" alt="">
                            <!-- Hover Thumb -->
                            <img class="hover-img" src="assets/img/index/product-3-2.jpg" alt="">

                            <!-- Product Badge -->
                            <div class="product-badge offer-badge">
                                <span>-17%</span>
                            </div>

                            <!-- Favourite -->
                            <div class="product-favourite">
                                <a href="#" class="favme fa fa-heart"></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <span>QUẦN KHAKI</span>
                            <a href="single-product-details.jsp">
                                <h6>QUẦN KHAKI - QKSL22230</h6>
                            </a>
                            <p class="product-price"><span class="old-price">999.000 ₫</span>830.000 ₫</p>

                            <!-- Hover Content -->
                            <div class="hover-content">
                                <!-- Add to Cart -->
                                <div class="add-to-cart-btn">
                                    <a href="#" class="btn essence-btn">Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Single Product -->
                    <div class="single-product-wrapper">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="assets/img/index/product-4-1.jpg" alt="">
                            <!-- Hover Thumb -->
                            <img class="hover-img" src="assets/img/index/product-4-2.jpg" alt="">

                            <!-- Product Badge -->
                            <div class="product-badge new-badge">
                                <span>New</span>
                            </div>

                            <!-- Favourite -->
                            <div class="product-favourite">
                                <a href="#" class="favme fa fa-heart"></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <span>ÁO SƠ MI</span>
                            <a href="single-product-details.jsp">
                                <h6>ÁO SƠ MI DÀI TAY - AR91008D2</h6>
                            </a>
                            <p class="product-price">498.000 ₫</p>

                            <!-- Hover Content -->
                            <div class="hover-content">
                                <!-- Add to Cart -->
                                <div class="add-to-cart-btn">
                                    <a href="#" class="btn essence-btn">Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-product-wrapper">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="assets/img/index/product-5-1.jpg" alt="">
                            <!-- Hover Thumb -->
                            <img class="hover-img" src="assets/img/index/product-5-2.jpg" alt="">

                            <!-- Product Badge -->
                            <div class="product-badge new-badge">
                                <span>New</span>
                            </div>

                            <!-- Favourite -->
                            <div class="product-favourite">
                                <a href="#" class="favme fa fa-heart"></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <span>ÁO JACKET</span>
                            <a href="single-product-details.jsp">
                                <h6>ÁO JACKET - JK61030</h6>
                            </a>
                            <p class="product-price">900.000 ₫</p>

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
<!-- ##### Footer Area End ##### -->

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