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
    <title>Khách hàng đăng nhập</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/login-register-forgot.css">
    <link rel="stylesheet" href="assets/css/LoginGoogle.css">
</head>

<body>
<!-- ##### Header Area Start ##### -->
<%@include file="header.jsp" %>
<!-- ##### Header Area End ##### -->

<!-- ##### Right Side Cart Area ##### -->
<%@include file="cartArea.jsp" %>
<!-- ##### Right Side Cart End ##### -->

<!-- ##### Form Login Area Start ##### -->
<div class="login">
    <div class="login-picture">
        <img src="https://owen.vn/media/amasty/ampromobanners/z2986808347343_1f2361207c98e06cecca19e94e0d1f66.jpg"
             alt="">
    </div>
    <div class="login-form">
        <form method="post" action="login" name="frm-login">
            <h3 class="title">ĐĂNG NHẬP</h3>
            <span class="note">Nếu bạn đã có tài khoản, hãy đăng nhập để tích lũy điểm thành viên và nhận được những ưu đãi tốt hơn!</span><br>
            <label for="username">Username</label>
            <span style="color: red">*</span><br>
            <input type="text" id="username" name="username"><br>
            <label for="password">Mật khẩu</label>
            <span style="color: red">*</span><br>
            <input type="password" id="password" name="password"><br>
            <a class="forgot-password" href="forgot.jsp">Bạn quên mật khẩu ?</a><br>
            <a href="myacc.jsp">
                <button type="submit">ĐĂNG NHẬP</button>
            </a>
            <br>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                    <a href="#" class="btn btn-primary facebook"> <span>Login with Facebook</span> <i
                            class="fa fa-facebook"></i> </a>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/project_LTW_war/login-google&response_type=code
    &client_id=245989591092-705c87btcvp8kr3cfuhfrdd01i4tjj0m.apps.googleusercontent.com&approval_prompt=force"
                       class="btn btn-primary google-plus"> Login with Google <i class="fa fa-google-plus"></i>
                    </a>
                </div>
            </div>
            <p>Không có tài khoản ? <a href="register.jsp"> Tạo một tài khoản</a></p>
            <%if (request.getAttribute("error") != null) {%>
            <p style="color:red"><%=request.getAttribute("error")%>
            </p>
            <%}%>
        </form>
    </div>
</div>

<!-- ##### Form Login Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<%@include file="footer.jsp" %>
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