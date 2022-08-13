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
    <title>Tạo mới tài khoản khách hàng</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/login-register-forgot.css">

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
        <a href="#" id="rightSideCart"><img src="assets/img/core-img/bag.svg" alt=""> <span> </span></a>
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

<!-- ##### Form Register Area Start ##### -->
<div class="register">
    <div class="register-picture">
        <img src="https://owen.vn/media/amasty/ampromobanners/z2986808347343_1f2361207c98e06cecca19e94e0d1f66.jpg"
             alt="">
    </div>
    <div class="register-form">
        <form method="post" action="Register" name="form-register" onsubmit="return verifyPassword()">
            <h3 class="title">TẠO TÀI KHOẢN</h3>
            <span class="note">Hãy đăng ký ngay để tích lũy điểm thành viên và nhận được những ưu đãi tốt hơn!</span><br>
            <label for="username">Username</label>
            <span style="color: red">*</span><br>
            <input type="text" id="username" name="username" placeholder="Username" required><br>
            <label for="email">Email</label>
            <span style="color: red">*</span><br>
            <input type="email" id="email" name="email" placeholder="Email" style="width: 400px;
    height: 50px;
    background-color: rgba(206, 204, 204, 0.11);
    border: 1px solid black;" required><br>

            <label for="password">Mật khẩu</label>
            <span style="color: red">*</span><br>
            <input type="password" id="password" name="password" placeholder="Mật khẩu" required><br>
            <label for="confirm-password">Xác nhận mật khẩu</label>
            <span style="color: red">*</span><br>
            <input type="password" id="confirm-password" name="confirm-password" placeholder="Xác nhận mật khẩu"
                   required><br>

            <input type="checkbox" id="checkbox1" name="checkbox1"
                   value="true">
            <label for="checkbox1"> Tôi đăng ký nhận bảng tin</label><br>
            <input type="checkbox" id="checkbox2" name="checkbox2"
                   value="true">
            <label for="checkbox2"> Tôi đồng ý với các điều khoản của
                OWEN</label><br><br>
            <p class="form-row wrap-btn" style="text-align: center; color: red">
            <p id="message"></p>
            <button type="submit">TẠO TÀI KHOẢN</button>
            </p>
            <br>
            <p>Bằng việc chọn tiếp tục, bạn đã đồng ý với <a href="#">Điều khoản & Điều kiện</a> cùng <a href="#">Chính
                sách bảo mật và chia sẻ thông tin</a> của OWEN</p>
            <p style="text-align: center">Đã có tài khoản ? <a href="login.jsp"> Đăng nhập</a></p>
            <script>
                function verifyPassword() {
                    let pw = document.getElementById("password").value;
                    if (pw.length < 8) {
                        document.getElementById("message").innerHTML = "**Mật khẩu phải trên 8 kí tự";
                        return false;
                    }
                    let rpw = document.getElementById("confirm-password").value;
                    if (!(pw === rpw)) {
                        document.getElementById("message").innerHTML = "Nhập lại mật khẩu không giống với mật khẩu";
                        return false;
                    }
                    return true;
                }
            </script>
        </form>

    </div>
</div>

<!-- ##### Form Register Area End ##### -->

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