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
    <title>Tài khoản của tôi</title>

    <!-- Favicon  -->
    <!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/css/custom-theme-min.css">

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> -->
    <!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet"> <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->

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
    <div class="container">
        <div class="alert card green white-text">
            <div class="card-content">
                <p><i class="material-icons">check_circle</i><span>This is an alert:</span> It has text within it.</p>
            </div>
        </div>
        <div class="row profile">
            <jsp:useBean id="account" scope="request"
                         type="edu.hcmuaf.edu.fit.project_ltw.beans.User"
            />
            <c:set var="acc" value="${account}"/>
            <div class="col-md-3">
                <div class="profile-sidebar">
                    <div class="profile-usertitle">
                        <div class="profile-usertitle-hello"> TÀI KHOẢN</div>
                        <div class="profile-usertitle-name"> Xin chào, <span class="name">${acc.getUser_name()}</span>
                        </div>
                    </div>

                    <div class="profile-usermenu">
                        <ul class=" items">
                            <!-- <div class="logo_menuchinh"
                                style="float:left; padding-top:5px; padding-left:10px; color:#fff; margin-left:auto; margin-right:auto; text-align: center; line-height:40px; font-size:16px;font-weight:bold;font-family:Arial">
                                HOCWEBGIARE.COM
                            </div> -->
                            <!-- <div class="menu-icon"><span>Menu</span></div> -->
                            <li class=" item active"><a href=""> <i class="glyphicon fas fa-question-circle"></i>
                                Thông
                                tin tài khoản </a>
                            </li>
                            <li class=" item "><a href="account_Address.jsp"> <i
                                    class="glyphicon fas fa-map-marker-alt"></i>
                                Địa chỉ nhận hàng</a>
                            </li>
                            <li class=" item "><a href="myorder.jsp" target=""> <i
                                    class="glyphicon fas fa-shopping-cart"></i> Quản lý đơn hàng </a>
                            </li>
                            <li class=" item "><a href="wishlist.jsp"> <i class="glyphicon far fa-heart"></i> Danh sách
                                yêu
                                thích </a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="column main ">

                <form class="form form-edit-account">
                    <fieldset class="fieldset info"><input name="form_key" type="hidden" value="fiFIjrL35gCxIa52">
                        <div class="field field-name-firstname required"><label for="firstname"
                                                                                class="label"><span>Tên</span></label>
                            <div class="control"><input type="text" id="firstname" name="firstname"
                                                        value="${acc.getUser_name()}"
                                                        title="Tên" class="input-text required-entry"
                                                        data-validate="{required:true}"
                                                        placeholder="Tên" aria-required="true"></div>
                            <p id="errorname" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>

                        </div>
<%--                        <div id="errorname" class="alert alert-danger" role="alert" style="display: none"></div>--%>
                        <!--<div class="field field-name-lastname required"><div class="control"><input type="text" id="" name="" value="" title="" class="input-text "  placeholder=""></div></div>-->
                        <div class="field choice" style="display: none;"><input type="checkbox" name="change_email"
                                                                                id="change-email"
                                                                                data-role="change-email" value="1"
                                                                                title="Thay đổi Email"
                                                                                class="checkbox" checked=""><label
                                class="label" for="change-email"><span>Thay đổi
                                        Email</span></label></div>
                        <div class="field choice" style="display: none;"><input type="checkbox"
                                                                                name="change_mobile_number"
                                                                                id="change-mobile-number"
                                                                                data-role="change-mobile-number"
                                                                                value="1" title="Thay đổi số điện thoại"
                                                                                class="checkbox" checked=""><label
                                class="label"
                                for="change-mobile-number"><span>Thay đổi số điện thoại</span></label></div>
                    </fieldset>
                    <fieldset class="fieldset password" data-container="change-email-mobile-password"
                              style="display: block;">
                        <div class="field email required" data-container="change-email" style="display: block;">
                            <label class="label" for="email"><span>Email</span></label>
                            <div class="control">
                                <input type="email" name="email" id="email" autocomplete="email"
                                       data-input="change-email" value="${acc.getEmail()}" title="Email"
                                       class="input-text"
                                       data-validate="{required:true}" aria-required="true"
<%--                                       pattern="/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/"--%>
                                       required>
                                <p id="erorrEmail" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>
                            </div>
                        </div>
                        <div class="field mobile-number required" data-container="change-mobile-number"
                             style="display: block;">
                            <label class="label" for="mobile_number"><span>Số điện thoại</span></label>
                            <div class="control">
                                <input type="text" name="mobile_number" id="mobile_number"
                                       data-input="change-mobile-number" value="${acc.getPhone()}"
                                       title="Số điện thoại"
                                       class="input-text"
                                       data-validate="{required:true, 'validate-digits':true,'validate-mobile-number':true}"
                                       aria-required="true" autocomplete="off ">
<%--                                       pattern="((09|03|07|08|05)+([0-9]{8})\b)/g" required>--%>
                                <p id="erorrphone" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>
                            </div>

                        </div>
                        <div class="field password current required" style="display: block;">
                            <div class="field">
                                <label class="label" for="current-password"><span>Mật khẩu hiện tại</span></label>
                                <div class="field choice">
                                    <input type="checkbox" name="change_password" id="change-password"
                                           data-role="change-password" title="Đổi mật khẩu"
                                           class="checkbox"><label class="label" for="change-password"><span>Đổi mật
                                                khẩu</span></label>
                                </div>
                            </div>
                            <div class="control">
                                <input type="password" class="input-text" name="current_password"
                                       id="current-password" data-input="current-password" autocomplete="off"
                                       aria-required="true" value="" data-validate="{required:true}">
<%--                                <div id="errorpass" class="alert alert-danger" role="alert" style="display: none"></div>--%>
                                <p id="errorpass" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>
                            </div>
                        </div>
                        <div id="content" style="display: none">
                            <div class="field new password required" data-container="new-password"
                                 style="display: block;">
                                <label class="label" for="password"><span>Mật khẩu mới</span></label>
                                <div class="control">
                                    <input type="password" class="input-text" name="password" id="password"
                                           data-password-min-length="8" data-password-min-character-sets="3"
                                           data-input="new-password" autocomplete="off" aria-required="true"
                                           data-validate="{required:true, 'validate-customer-password':true, 'password-not-equal-to-user-name':'nguyenhau31867@gmail.com'}"
                                           aria-autocomplete="list">
                                    <div id="password-strength-meter-container" data-role="password-strength-meter"
                                         aria-live="polite">
                                        <div id="password-strength-meter" class="password-strength-meter">Độ mạnh
                                            mật
                                            khẩu:
                                            <span id="password-strength-meter-label"
                                                  data-role="password-strength-meter-label">Không có mật khẩu</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="field confirm password required" data-container="confirm-password"
                                 style="display: block;">
                                <label class="label" for="password-confirmation"><span>Xác nhận mật khẩu
                                            mới</span></label>
                                <div class="control">
                                    <input type="password" class="input-text" name="password_confirmation"
                                           id="password-confirmation" data-input="confirm-password" autocomplete="off"
                                           aria-required="true"
                                           data-validate="{required:true, equalTo:&quot;[data-input=new-password]&quot;}">
                                </div>
                            </div>
                        </div>


                    </fieldset>
<%--                    <div class="actions-toolbar">--%>
<%--                        <div class="primary">--%>
<%--                            <button type="submit" id="updatebutton" class="action save primary btn"--%>
<%--                                    title="Lưu lại"><span>Cập nhật</span></button>--%>
<%--                        </div>--%>
<%--                        <div class="secondary"><a class="action back"--%>
<%--                                                  href=""><span>Quay lại</span></a></div>--%>
<%--                    </div>--%>
                </form>
                <a > <button class=" button success"  type="submit" onclick="updateInfor()" id="updatebutton">ĐĂNG NHẬP</button></a>
            </div>
        </div>
    </div>
</div>

</div>

<!-- ##### Footer Area Start ##### -->
<%@include file="footer.jsp" %>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src="assets/js/Alertify.js"></script>
<script>
    // $(document).ready(function () {
    var filterEmail = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var filterPhone = /(84|0[3|5|7|8|9])+([0-9]{8})\b/;
    function updateInfor() {
            var username = $("#firstname").val().trim();
            var email = $("#email").val().trim();
            var phone = $("#mobile_number").val().trim();
            var pass = $("#current-password").val().trim();

            if (username == "" || username == "/\s/g"){
                $("#errorname").css('display','block');
                $("#errorname").html("Đây là trường bắt buộc.");
            }
            else {
                $("#errorname").css('display','none');
            }

             if (email == ""){
                 $("#erorrEmail").css('display','block');
                 $("#erorrEmail").html("Đây là trường bắt buộc.");
             }
             else  if(!filterEmail.test(email)){
                 $("#erorrEmail").css('display','block');
                 $("#erorrEmail").html("Vui lòng nhập một địa chỉ email hợp lệ.");
             }
             else {
                 $("#erorrEmail").css('display','none');
             }

             if (phone == ""){
                 $("#erorrphone").css('display','block');
                 $("#erorrphone").html("Đây là trường bắt buộc.");
             }
             else  if(!filterPhone.test(phone)){
                 $("#erorrphone").css('display','block');
                 $("#erorrphone").html("Vui lòng nhập một số điện thoại hợp lệ.");
             }
             else {
                 $("#erorrphone").css('display','none');
             }

             if (pass == ""){
                 $("#errorpass").css('display','block');
                 $("#errorpass").html("Đây là trường bắt buộc.");
             }
             else {
                 $("#errorpass").css('display','none');
             }
            if (username != "" && email != "" && phone != "" && pass != "" && filterPhone.test(phone) && filterEmail.test(email)){
                $.ajax({
                    url: '/project_LTW_war/updateAccountInfor',
                    type: 'post',
                    data: {
                        updateUserName: username,
                        updateEmail: email,
                        updatePhone: phone,
                        confirmPass: pass
                    },
                    success: function (data) {
                        if (data == "failure "){

                        }
                        else {

                        }
                        // alert("susser")
                        // var row = document.getElementById("context");
                        // var text = $("#context").html();
                        // $("#context").html(data);

                    },
                    error: function (xhr) {

                    }
                })
            }

        }

    // })
</script>
<script language="javascript">


    document.getElementById("change-password").onclick = function () {
        if (document.getElementById("content").style.display == 'none') {
            document.getElementById("content").style.display = 'block';
        } else {
            document.getElementById("content").style.display = 'none';

        }

    };


</script>

<!-- ##### Footer Area End ##### -->

<!-- jQuery (Necessary for All JavaScript Plugins) -->
<script src="assets/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="assets/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="js/plugins.js"></script>
<!-- Classy Nav js -->
<script src="assets/js/classy-nav.min.js"></script>
<!-- Active js -->
<script src="assets/js/active.js"></script>



</body>

</html>