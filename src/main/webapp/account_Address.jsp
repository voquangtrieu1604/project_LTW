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
    <title>Thêm địa chỉ mới</title>

    <!-- Favicon  -->
<!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/css/custom-theme-min.css">

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="assets/css/alertfy.css">
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


    <%@include file="cartArea.jsp" %>
    <!-- ##### Right Side Cart End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb_area bg-img" style="background-image: url(assets/img/bg-img/breadcumb.jpg)">
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
                        <div class="profile-usertitle-hello"> TÀI KHOẢN </div>
                        <div class="profile-usertitle-name"> Xin chào, <span class="name">Hậu Nguyễn</span> </div>
                    </div>
                    <%@include file="userAccountMenu.jsp" %>
                </div>
            </div>
            <jsp:useBean id="address" scope="request"
                         type="edu.hcmuaf.edu.fit.project_ltw.beans.Address"
            />
            <c:set var="add" value="${address}"/>
            <jsp:useBean id="account" scope="request"
                         type="edu.hcmuaf.edu.fit.project_ltw.beans.User"
            />
            <c:set var="acc" value="${account}"/>
            <div class="column main ">
                <form class="form-address-edit">
                    <fieldset class="fieldset">
                        <legend class="legend"><span>Thông tin liên hệ</span></legend>
                        <br>
                        <input name="form-key" type="hidden">
                        <input type="hidden" name="success_url">
                        <input type="hidden" name="error_url">
                        <div class="field field-name-firstname required">
                            <label for="surname" class="label"><span>Họ</span></label>
                            <div class="control"><input type="text" id="surname" name="surname" value="${add.surname}" title="Họ"
                                                        class="input-text required-entry" data-validate="{required:true}" placeholder="Họ"
                                                        aria-required="true">
                                <p id="errorsurname" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>
                            </div>
                        </div>
                        <div class="field field-name-firstname required">
                            <label for="firstname" class="label"><span>Tên</span></label>
                            <div class="control"><input type="text" id="firstname" name="firstname" value="${add.name}" title="Tên"
                                    class="input-text required-entry" data-validate="{required:true}" placeholder="Tên"
                                    aria-required="true">
                                <p id="errorname" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>
                            </div>
                        </div>
                        <div class="field telephone  required">
                            <label for="telephone" class="label"><span>Số điện thoại</span></label>
                            <div class="control"><input type="text" id="telephone" name="telephone" value="${add.phone}"
                                    title="telephone " class="input-text required-entry" data-validate="{required:true}"
                                    placeholder="Số điện thoại" aria-required="true">
                                <p id="errorphone" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>
                            </div>
                        </div>


                    </fieldset>
                    <fieldset class="fieldset">
                        <legend class="legend"><span>Địa chỉ</span></legend>
                        <br>
                        <div class="field street required">
                            <label for="street_1" class="label"><span>Địa chỉ đường</span></label>
                            <div class="control">
                                <input type="text" name="street[]" value="${add.street}" title="Địa chỉ đường" id="street_1"
                                    class="input-text required-entry" aria-required="true">
                                <p id="errorduong" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>

                            </div>
                        </div>
                        <div class="field country required"><label class="label" for="country"><span>Quốc
                                    gia</span></label>
                            <div class="control">
                                <select name="country_id" id="country" class="required-entry" title="Quốc gia"
                                    data-validate="{'validate-select':true}" aria-required="true">
                                    <option value="VN" selected="selected">Việt Nam</option>
                                </select>
                            </div>
                        </div>
                        <div class="field region required">
                            <label class="label" for="region_id"><span>Tỉnh/Thành phố</span></label>
                            <div class="control">
                                <select id="region_id" name="region_id" title="Tỉnh/Thành phố" class="" style="display:none"
                                        aria-required="true">
                                    <option value="0"></option>
                                </select> <input type="text" id="region" name="region" value="${add.province}" title="Tỉnh/Thành phố"
                                    class="input-text"  aria-required="true">
                                <p id="errortinh" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>
                            </div>
                        </div>
                        <div class="field city required">
                            <label class="label" for="city"><span>Quận/Huyện</span></label>
                            <div class="control">
                                <select id="city_id" name="city_id" title="Quận/Huyện" class="" style="display:none"
                                    aria-required="true">
                                    <option value="0"></option>
                                </select>
                                <input type="text" name="city" value="${add.district}" title="Quận/Huyện"
                                    class="input-text required-entry" id="city" aria-required="true">
                                <p id="errorhuyen" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>
                            </div>
                        </div>
                        <div class="field ward required"> <label class="label" for="ward"><span>Phường/xã</span></label>
                            <div class="control"><select id="ward_id" name="ward_id" title="Phường/xã" class=""
                                    style="display:none" aria-required="true">
                                    <option value="0"></option>
                                </select> <input type="text" name="ward" value="${add.ward}" title="Phường/xã"
                                    class="input-text  required-entry" id="ward" aria-required="true">
                                <p id="errorxa" style="display: none;color: #e02b27;font-size: 0.9rem;margin: 0;font-weight: 600"></p>
                            </div>
                        </div>
                        <div class="field zip"><label class="label" for="zip"><span>Mã bưu chính</span></label>
                            <div class="control"> <input type="text" name="postcode" value="${add.postal_id}" title="Mã bưu chính"
                                    id="zip" class="input-text validate-zip-international">
                                <div role="alert" class="message warning"><span></span></div>
                                <style>
                                    div.zip .message.warning {
                                        display: none;
                                    }
                                </style>
                            </div>
                        </div>



                    </fieldset>

                </form>
                <div class="actions-toolbar">
                    <div class="primary"><button type="submit" class="action submit primary btn"
                                                 data-action="save-address" title="Lưu địa chỉ" onclick="updateAddress()"><span>Lưu địa chỉ</span></button></div>

                </div>

            </div>
        </div>

    </div>

    <!-- ##### Footer Area Start ##### -->
    <%@include file="footer.jsp" %>

    <!-- ##### Footer Area End ##### -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
    <script src="assets/js/Alertify.js"></script>
    <script>
        // $(document).ready(function () {
        var filterPhone = /(84|0[3|5|7|8|9])+([0-9]{8})\b/;
        function updateAddress() {
            var surname = $("#surname").val().trim();
            var name = $("#firstname").val().trim();
            var phone = $("#telephone").val().trim();
            var duong = $("#street_1").val().trim();
            var tinh = $("#region").val().trim();
            var huyen = $("#city").val().trim();
            var xa = $("#ward").val().trim();
            var postid = $("#zip").val().trim();

            if (surname == "" || surname == "/\s/g"){
                $("#errorsurname").css('display','block');
                $("#errorsurname").html("Đây là trường bắt buộc.");
            }
            else {
                $("#errorsurname").css('display','none');
            }

            if (name == ""){
                $("#errorname").css('display','block');
                $("#errorname").html("Đây là trường bắt buộc.");
            }
            else {
                $("#errorname").css('display','none');
            }

            if (duong == ""){
                $("#errorduong").css('display','block');
                $("#errorduong").html("Đây là trường bắt buộc.");
            }
            else {
                $("#errorduong").css('display','none');
            }

            if (tinh == ""){
                $("#errortinh").css('display','block');
                $("#errortinh").html("Đây là trường bắt buộc.");
            }
            else {
                $("#errortinh").css('display','none');
            }

            if (huyen == ""){
                $("#errorhuyen").css('display','block');
                $("#errorhuyen").html("Đây là trường bắt buộc.");
            }
            else {
                $("#errorhuyen").css('display','none');
            }

            if (xa == ""){
                $("#errorxa").css('display','block');
                $("#errorxa").html("Đây là trường bắt buộc.");
            }
            else {
                $("#errorxa").css('display','none');
            }

            if (phone == ""){
                $("#errorphone").css('display','block');
                $("#errorphone").html("Đây là trường bắt buộc.");
            }
            else  if(!filterPhone.test(phone)){
                $("#errorphone").css('display','block');
                $("#errorphone").html("Vui lòng nhập một số điện thoại hợp lệ.");
            }
            else {
                $("#errorphone").css('display','none');
            }

            if (surname != "" && name != "" && phone != "" && duong != "" && tinh != "" && huyen != "" && xa != "" &&  filterPhone.test(phone)){
                $.ajax({
                    url: '/project_LTW_war/updateAddress',
                    type: 'post',
                    data: {
                        updateSurname: surname,
                        updateName: name,
                        updatePhone: phone,
                        updateDuong: duong,
                        updateTinh: tinh,
                        updateHuyen: huyen,
                        updateXa: xa,
                        updateZip: postid
                    },
                    success: function (data) {
                        // if (data == 0){
                        //     alertify.set({ delay: 1200 });
                        //     alertify.error("Sai mật khẩu");
                        // }
                        // else {
                            alertify.set({ delay: 1200 });
                            alertify.success("Cập nhật thành công");
                            $("#current-password").val("");
                        // }

                    },
                    error: function (xhr) {

                    }
                })
            }

        }

        // })
    </script>
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