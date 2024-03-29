<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.Order" %>
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
    <title>Chi tiết đơn đặt hàng</title>

    <!-- Favicon  -->
<!--    <link rel="icon" href="assets/img/core-img/favicon.ico">-->

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="assets/css/core-style.css">
    <link rel="stylesheet" href="assets/css/custom-theme-min.css">

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> -->
    <!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet"> <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->

</head>
<style>
    .table-responsive {
        margin: 30px 0;
    }

    .table-wrapper {
        /* min-width: 1000px; */
        background: #fff;
        /* padding: 20px 25px; */
        border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    }

    .table-wrapper .btn {
        float: right;
        color: #333;
        background-color: #fff;
        border-radius: 3px;
        border: none;
        outline: none !important;
        margin-left: 10px;
    }

    .table-wrapper .btn:hover {
        color: #333;
        background: #f2f2f2;
    }

    .table-wrapper .btn.btn-primary {
        color: #fff;
        background: #03A9F4;
    }

    .table-wrapper .btn.btn-primary:hover {
        background: #03a3e7;
    }

    .table-title .btn {
        font-size: 13px;
        border: none;
    }

    .table-title .btn i {
        float: left;
        font-size: 21px;
        margin-right: 5px;
    }

    .table-title .btn span {
        float: left;
        margin-top: 2px;
    }

    .table-title {
        color: #fff;
        background: #4b5366;
        padding: 16px 25px;
        margin: -20px -25px 10px;
        border-radius: 3px 3px 0 0;
    }

    .table-title h2 {
        margin: 5px 0 0;
        font-size: 24px;
    }

    .show-entries select.form-control {
        width: 60px;
        margin: 0 5px;
    }

    .table-filter .filter-group {
        float: right;
        margin-left: 15px;
    }

    .table-filter input,
    .table-filter select {
        height: 34px;
        border-radius: 3px;
        border-color: #ddd;
        box-shadow: none;
    }

    .table-filter {
        padding: 5px 0 15px;
        border-bottom: 1px solid #e9e9e9;
        margin-bottom: 5px;
    }

    .table-filter .btn {
        height: 34px;
    }

    .table-filter label {
        font-weight: normal;
        margin-left: 10px;
    }

    .table-filter select,
    .table-filter input {
        display: inline-block;
        margin-left: 5px;
    }

    .table-filter input {
        width: 200px;
        display: inline-block;
    }

    .filter-group select.form-control {
        width: 110px;
    }

    .filter-icon {
        float: right;
        margin-top: 7px;
    }

    .filter-icon i {
        font-size: 18px;
        opacity: 0.7;
    }

    table.table tr th,
    table.table tr td {
        border-color: #e9e9e9;
        padding: 12px 15px;
        vertical-align: middle;
    }



    table.table tr th:nth-child(2) {
        width: 93px;
    }

    table.table tr th:nth-child(3) {
        width: 93px;
    }

    table.table tr th:nth-child(4) {
        width: 93px;
    }



    table.table tr th:last-child {
        width: 93px;
    }

    table.table-striped tbody tr:nth-of-type(odd) {
        background-color: #fcfcfc;
    }

    table.table-striped.table-hover tbody tr:hover {
        background: #f5f5f5;
    }

    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }

    table.table td a {
        font-weight: bold;
        color: rgb(11, 116, 229);
        display: inline-block;
        text-decoration: none;
    }

    table.table td a:hover {
        color: #2196F3;
    }

    table.table td a.view {
        width: 30px;
        height: 30px;
        color: #2196F3;
        border: 2px solid;
        border-radius: 30px;
        text-align: center;
    }

    table.table td a.view i {
        font-size: 22px;
        margin: 2px 0 0 1px;
    }

    table.table .avatar {
        width: 80px;
        vertical-align: middle;
        margin-right: 10px;
    }

    .status {
        font-size: 30px;
        margin: 2px 2px 0 0;
        display: inline-block;
        vertical-align: middle;
        line-height: 10px;
    }

    .text-success {
        color: #10c469;
    }

    .text-info {
        color: #62c9e8;
    }

    .text-warning {
        color: #FFC107;
    }

    .text-danger {
        color: #ff5b5b;
    }

    .pagination {
        float: right;
        margin: 0 0 5px;
    }

    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }

    .pagination li a:hover {
        color: #666;
    }

    .pagination li.active a {
        background: #03A9F4;
    }

    .pagination li.active a:hover {
        background: #0397d6;
    }

    .pagination li.disabled i {
        color: #ccc;
    }

    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }

    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }

    .table tfoot tr td {
        border-top: none;
    }


    .table tfoot tr:first-child td {
        padding-top: 30px;
    }

    .table tfoot tr td {
        text-align: right;
        display: table-cell;
        padding: 5px 10px;
        max-width: 550px;
        min-width: 125px;
        color: rgb(36, 36, 36);
    }

    .table tfoot tr:first-child td {
        padding-top: 30px;

    }


    .table tfoot tr td span {
        color: rgb(120, 120, 120);
        font-size: 14px;
    }

    .table tfoot tr td .sum {
        color: rgb(255, 59, 39);
        font-size: 18px;
    }
</style>
<% List<Product> danhsach = (List<Product>) request.getAttribute("listProduct");%>
<% User user = (User) session.getAttribute("auth");%>
<% String idorder = (String) request.getAttribute("orderid");%>
<% Order order = (Order) request.getAttribute("order");%>
<body class="account customer-address-form page-layout-2columns-left">
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
                        <div class="profile-usertitle-name"> Xin chào, <span class="name"><%=idorder%></span> </div>
                    </div>

                    <%@include file="userAccountMenu.jsp" %>
                </div>
            </div>
            <div class="column main ">
                <div class="heading"><span>Chi tiết đơn hàng #<%=order.getId_order()%></span><span class="split">-</span><span
                        class="status">Giao hàng thành công</span>
                </div>
                <div class="created-date">Ngày đặt hàng: <%=order.getDate_time()%></div>
                <div class="infor-diliver">
                    <div class=" item">
                        <div class="title">Địa chỉ người nhận</div>
                        <div class="content">
                            <p class="name"><%=order.getHoten()%></p>
                            <p class="address"><span>Địa chỉ: </span><%=order.getAddress()%> <%=order.getHuyen()%> <%=order.getThanhpho()%></p>
                            <p class="phone"><span>Điện thoại: </span><%=order.getPhone()%></p>
                        </div>
                    </div>
                    <div class=" item">
                        <div class="title">Hình thức giao hàng</div>
                        <div class="content">
                            <p><img src="https://salt.tikicdn.com/ts/upload/2a/47/46/0e038f5927f3af308b4500e5b243bcf6.png"
                                    width="56" alt="TikiFast"> <span> .Giao Tiết Kiệm</span></p>
                            <p>Giao vào Thứ tư, 09/10</p>
                            <p>Được giao bởi TikiNOW Smart Logistics (giao từ Hồ Chí Minh)</p>
                            <p>Miễn phí vận chuyển</p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="title">Hình thức thanh toán</div>
                        <div class="content">
                            <p class="">Thanh toán tiền mặt khi nhận hàng</p>
                        </div>
                    </div>
                </div>
                <div class="container-xl">
                    <div class="table-responsive">
                        <div class="table-wrapper">


                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Sản phẩm </th>
                                        <th>Giá</th>
                                        <th>Số Lượng</th>
                                        <th>Giảm giá</th>
                                        <th>Tạm tính</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <%for (Product pr : danhsach) {%>
                                        <td><a href="ChiTietSanPham?id_product=<%=pr.getId_product()%>"><img
                                                    src="<%=pr.getImg_url()%>" class="avatar" alt="Avatar"><span style="float: right;width: 70%;margin: 36px 0">
                                            <%=pr.getProduct_name()%>
                                        </span></a></td>
                                        <td><%=pr.getPrice()%></td>
                                        <td><%=pr.getQuantitySold()%></td>
                                        <td>0</td>
                                        <td><%=pr.totalPriceSold()%></td>
                                        <%}%>
                                    </tr>

                                <tfoot>
<%--                                    <tr>--%>
<%--                                        <td colspan="4"><span>Tạm tính</span></td>--%>
<%--                                        <td><%=pr.getPrice()%></td>--%>
<%--                                    </tr>--%>
<%--                                    <tr>--%>
<%--                                        <td colspan="4"><span>Giảm giá</span></td>--%>
<%--                                        <td>-1.100.000 ₫</td>--%>
<%--                                    </tr>--%>
<%--                                    <tr>--%>
<%--                                        <td colspan="4"><span>Phí vận chuyển</span></td>--%>
<%--                                        <td>0.000 ₫</td>--%>
<%--                                    </tr>--%>
                                    <tr>
                                        <td colspan="4"><span>Tổng cộng(đăng tính luôn ship và giảm giá)</span></td>
                                        <td><span class="sum"><%=order.getTotal_money()%> ₫</span></td>
                                    </tr>
                                </tfoot>
                            </table>
                            

                        </div>
                    </div>
                </div>
                <a class="view-list-order" href="/project_LTW_war/showMyOrder">&lt;&lt; Quay lại đơn hàng của
                    tôi
                </a>








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
    <script src=assets/js/classy-nav.min.js"></script>
    <!-- Active js -->
    <script src="assets/js/active.js"></script>

</body>

</html>