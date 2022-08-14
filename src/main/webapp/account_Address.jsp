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
            <div class="column main ">
                <form class="form-address-edit">
                    <fieldset class="fieldset">
                        <legend class="legend"><span>Thông tin liên hệ</span></legend>
                        <br>
                        <input name="form-key" type="hidden">
                        <input type="hidden" name="success_url">
                        <input type="hidden" name="error_url">
                        <div class="field field-name-firstname required">
                            <label for="firstname" class="label"><span>Tên</span></label>
                            <div class="control"><input type="text" id="firstname" name="firstname" value="" title="Tên"
                                    class="input-text required-entry" data-validate="{required:true}" placeholder="Tên"
                                    aria-required="true">
                            </div>
                        </div>
                        <div class="field telephone  required">
                            <label for="telephone " class="label"><span>Số điện thoại</span></label>
                            <div class="control"><input type="text" id="telephone " name="firstname" value=""
                                    title="telephone " class="input-text required-entry" data-validate="{required:true}"
                                    placeholder="Số điện thoại" aria-required="true">
                            </div>
                        </div>


                    </fieldset>
                    <fieldset class="fieldset">
                        <legend class="legend"><span>Địa chỉ</span></legend>
                        <br>
                        <div class="field street required">
                            <label for="street_1" class="label"><span>Địa chỉ đường</span></label>
                            <div class="control">
                                <input type="text" name="street[]" value="" title="Địa chỉ đường" id="street_1"
                                    class="input-text required-entry" aria-required="true">

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
                                <select id="region_id" name="region_id" title="Tỉnh/Thành phố"
                                    class="validate-select region_id required-entry" style="display: block;"
                                    defaultvalue="0" aria-required="true">
                                    <option value="">Vui lòng chọn tỉnh/thành phố</option>
                                    <option value="938">Thành phố Hà Nội</option>
                                    <option value="939">Tỉnh Hà Giang</option>
                                    <option value="940">Tỉnh Cao Bằng</option>
                                    <option value="941">Tỉnh Bắc Kạn</option>
                                    <option value="942">Tỉnh Tuyên Quang</option>
                                    <option value="943">Tỉnh Lào Cai</option>
                                    <option value="944">Tỉnh Điện Biên</option>
                                    <option value="945">Tỉnh Lai Châu</option>
                                    <option value="946">Tỉnh Sơn La</option>
                                    <option value="947">Tỉnh Yên Bái</option>
                                    <option value="948">Tỉnh Hoà Bình</option>
                                    <option value="949">Tỉnh Thái Nguyên</option>
                                    <option value="950">Tỉnh Lạng Sơn</option>
                                    <option value="951">Tỉnh Quảng Ninh</option>
                                    <option value="952">Tỉnh Bắc Giang</option>
                                    <option value="953">Tỉnh Phú Thọ</option>
                                    <option value="954">Tỉnh Vĩnh Phúc</option>
                                    <option value="955">Tỉnh Bắc Ninh</option>
                                    <option value="956">Tỉnh Hải Dương</option>
                                    <option value="957">Thành phố Hải Phòng</option>
                                    <option value="958">Tỉnh Hưng Yên</option>
                                    <option value="959">Tỉnh Thái Bình</option>
                                    <option value="960">Tỉnh Hà Nam</option>
                                    <option value="961">Tỉnh Nam Định</option>
                                    <option value="962">Tỉnh Ninh Bình</option>
                                    <option value="963">Tỉnh Thanh Hóa</option>
                                    <option value="964">Tỉnh Nghệ An</option>
                                    <option value="965">Tỉnh Hà Tĩnh</option>
                                    <option value="966">Tỉnh Quảng Bình</option>
                                    <option value="967">Tỉnh Quảng Trị</option>
                                    <option value="968">Tỉnh Thừa Thiên Huế</option>
                                    <option value="969">Thành phố Đà Nẵng</option>
                                    <option value="970">Tỉnh Quảng Nam</option>
                                    <option value="971">Tỉnh Quảng Ngãi</option>
                                    <option value="972">Tỉnh Bình Định</option>
                                    <option value="973">Tỉnh Phú Yên</option>
                                    <option value="974">Tỉnh Khánh Hòa</option>
                                    <option value="975">Tỉnh Ninh Thuận</option>
                                    <option value="976">Tỉnh Bình Thuận</option>
                                    <option value="977">Tỉnh Kon Tum</option>
                                    <option value="978">Tỉnh Gia Lai</option>
                                    <option value="979">Tỉnh Đắk Lắk</option>
                                    <option value="980">Tỉnh Đắk Nông</option>
                                    <option value="981">Tỉnh Lâm Đồng</option>
                                    <option value="982">Tỉnh Bình Phước</option>
                                    <option value="983">Tỉnh Tây Ninh</option>
                                    <option value="984">Tỉnh Bình Dương</option>
                                    <option value="985">Tỉnh Đồng Nai</option>
                                    <option value="986">Tỉnh Bà Rịa - Vũng Tàu</option>
                                    <option value="987">Thành phố Hồ Chí Minh</option>
                                    <option value="988">Tỉnh Long An</option>
                                    <option value="989">Tỉnh Tiền Giang</option>
                                    <option value="990">Tỉnh Bến Tre</option>
                                    <option value="991">Tỉnh Trà Vinh</option>
                                    <option value="992">Tỉnh Vĩnh Long</option>
                                    <option value="993">Tỉnh Đồng Tháp</option>
                                    <option value="994">Tỉnh An Giang</option>
                                    <option value="995">Tỉnh Kiên Giang</option>
                                    <option value="996">Thành phố Cần Thơ</option>
                                    <option value="997">Tỉnh Hậu Giang</option>
                                    <option value="998">Tỉnh Sóc Trăng</option>
                                    <option value="999">Tỉnh Bạc Liêu</option>
                                    <option value="1000">Tỉnh Cà Mau</option>
                                </select> <input type="text" id="region" name="region" value="" title="Tỉnh/Thành phố"
                                    class="input-text" style="display: none;" aria-required="true">
                            </div>
                        </div>
                        <div class="field city required">
                            <label class="label" for="city"><span>Quận/Huyện</span></label>
                            <div class="control">
                                <select id="city_id" name="city_id" title="Quận/Huyện" class="" style="display:none"
                                    aria-required="true">
                                    <option value="0"></option>
                                </select>
                                <input type="text" name="city" value="" title="Quận/Huyện"
                                    class="input-text required-entry" id="city" aria-required="true">
                            </div>
                        </div>
                        <div class="field ward required"> <label class="label" for="ward"><span>Phường/xã</span></label>
                            <div class="control"><select id="ward_id" name="ward_id" title="Phường/xã" class=""
                                    style="display:none" aria-required="true">
                                    <option value="0"></option>
                                </select> <input type="text" name="ward" value="" title="Phường/xã"
                                    class="input-text  required-entry" id="ward" aria-required="true">
                            </div>
                        </div>
                        <div class="field zip"><label class="label" for="zip"><span>Mã bưu chính</span></label>
                            <div class="control"> <input type="text" name="postcode" value="" title="Mã bưu chính"
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
                    <div class="actions-toolbar">
                        <div class="primary"><button type="submit" class="action submit primary btn"
                                data-action="save-address" title="Lưu địa chỉ"><span>Lưu địa chỉ</span></button></div>
                        
                    </div>
                </form>

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