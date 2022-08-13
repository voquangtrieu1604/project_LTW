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
    <title>Thanh toán</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/style.css">

</head>

<body>
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
                    <h2>thanh toán</h2>
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

                    <form action="#" method="post">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="first_name">Tên <span>*</span></label>
                                <input type="text" class="form-control" id="first_name" value="" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="last_name">Họ <span>*</span></label>
                                <input type="text" class="form-control" id="last_name" value="" required>
                            </div>
                            <div class="col-12 mb-3">
                                <label for="company">Tên Công Ty</label>
                                <input type="text" class="form-control" id="company" value="">
                            </div>
                            <div class="col-12 mb-3">
                                <label for="country1">Tỉnh/Thành Phố <span>*</span></label>
                                <select class="w-100" id="country1">
                                    <option value="#">Vui lòng chọn tỉnh/thành phố</option>
                                    <option value="hanoi">Hà Nội</option>
                                    <option value="hcm">Thành Phố Hồ Chí Minh</option>
                                    <option value="haiphong">Hải Phòng</option>
                                    <option value="danang">Đà Nẵng</option>
                                    <option value="hue">Huế</option>
                                    <option value="thanhhoa">Thanh Hóa</option>

                                </select>
                            </div>
                            <div class="col-12 mb-3">
                                <label for="country2">Quận/Huyện <span>*</span></label>
                                <select class="w-100" id="country2">
                                    <option value="#">Vui lòng chọn quận/huyện</option>
                                    <option value="hanoi">Hà Nội</option>
                                    <option value="hcm">Thành Phố Hồ Chí Minh</option>
                                    <option value="haiphong">Hải Phòng</option>
                                    <option value="danang">Đà Nẵng</option>
                                    <option value="hue">Huế</option>
                                    <option value="thanhhoa">Thanh Hóa</option>

                                </select>
                            </div>
                            <div class="col-12 mb-3">
                                <label for="street_address">Địa Chỉ <span>*</span></label>
                                <input type="text" class="form-control mb-3" id="street_address" value="">
                                <!--<input type="text" class="form-control" id="street_address2" value="">-->
                            </div>
                            <div class="col-12 mb-3">
                                <label for="phone_number">Số điện thoại <span>*</span></label>
                                <input type="number" class="form-control" id="phone_number" min="0" value="">
                            </div>
                            <div class="col-12 mb-4">
                                <label for="email_address">Email <span>*</span></label>
                                <input type="email" class="form-control" id="email_address" value="">
                            </div>

                            <div class="col-12">
                                <div class="custom-control custom-checkbox d-block mb-2">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                    <label class="custom-control-label" for="customCheck1">Các điều khoản và điều kiện</label>
                                </div>
                                <div class="custom-control custom-checkbox d-block mb-2">
                                    <input type="checkbox" class="custom-control-input" id="customCheck2">
                                    <label class="custom-control-label" for="customCheck2">Tạo một tài khoản</label>
                                </div>
                                <div class="custom-control custom-checkbox d-block">
                                    <input type="checkbox" class="custom-control-input" id="customCheck3">
                                    <label class="custom-control-label" for="customCheck3">Theo dõi bản tin của chúng tôi
                                        </label>
                                </div>
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
                     <li><span><!--   Cocktail Yellow dress--></span> <span><!--$59.90--></span></li>
                        <li><span>Giá tiền</span> <span>0</span></li>
                        <li><span>Vận chuyển</span> <span>Free</span></li>
                        <li><span>Tổng tiền</span> <span>0</span></li>
                    </ul>

                    <div id="accordion" role="tablist" class="mb-4">
                        <div class="card">
                            <div class="card-header" role="tab" id="headingOne">
                                <h6 class="mb-0">
                                    <a data-toggle="collapse" href="#collapseOne" aria-expanded="false"
                                       aria-controls="collapseOne"><i class="fa fa-circle-o mr-3"></i>Paypal</a>
                                </h6>
                            </div>

                            <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne"
                                 data-parent="#accordion">
                                <div class="card-body">
<!--                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra tempor so-->
<!--                                        dales. Phasellus sagittis auctor gravida. Integ er bibendum sodales arcu id te-->
<!--                                        mpus. Ut consectetur lacus.</p>-->
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" role="tab" id="headingTwo">
                                <h6 class="mb-0">
                                    <a class="collapsed" data-toggle="collapse" href="#collapseTwo"
                                       aria-expanded="false" aria-controls="collapseTwo"><i
                                            class="fa fa-circle-o mr-3"></i>thanh toán khi nhận hàng</a>
                                </h6>
                            </div>
                            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo"
                                 data-parent="#accordion">
                                <div class="card-body">
<!--                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quis in-->
<!--                                        veritatis officia inventore, tempore provident dignissimos.</p>-->
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" role="tab" id="headingThree">
                                <h6 class="mb-0">
                                    <a class="collapsed" data-toggle="collapse" href="#collapseThree"
                                       aria-expanded="false" aria-controls="collapseThree"><i
                                            class="fa fa-circle-o mr-3"></i>thẻ tín dụng</a>
                                </h6>
                            </div>
                            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree"
                                 data-parent="#accordion">
                                <div class="card-body">
<!--                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse quo sint-->
<!--                                        repudiandae suscipit ab soluta delectus voluptate, vero vitae</p>-->
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" role="tab" id="headingFour">
                                <h6 class="mb-0">
                                    <a class="collapsed" data-toggle="collapse" href="#collapseFour"
                                       aria-expanded="true" aria-controls="collapseFour"><i
                                            class="fa fa-circle-o mr-3"></i>trực tiếp qua ngân hàng</a>
                                </h6>
                            </div>
                            <div id="collapseFour" class="collapse show" role="tabpanel" aria-labelledby="headingThree"
                                 data-parent="#accordion">
                                <div class="card-body">
<!--                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est cum autem eveniet-->
<!--                                        saepe fugit, impedit magni.</p>-->
                                </div>
                            </div>
                        </div>
                    </div>

                    <a href="#" class="btn essence-btn">Đặt hàng</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Checkout Area End ##### -->

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