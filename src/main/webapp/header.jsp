<%--
  Created by IntelliJ IDEA.
  User: THIS PC
  Date: 8/6/2022
  Time: 8:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <%
    User ua =null;
    if(session.getAttribute("auth")!=null) {
        ua = (User) session.getAttribute("auth");
    }
    System.out.println(ua);
%>
<header class="header_area">

    <div class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
        <!-- Classy Menu -->
        <nav class="classy-navbar" id="essenceNav">
            <!-- Logo -->
            <a class="nav-brand" href="TrangChu"><img
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
                        <li><a href="Shop">Thu Đông</a></li>
                        <li><a href="Shop">Shop</a>
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
                        <li><a href="GiaTot">Giá Tốt</a></li>
                        <li><a href="DanhSachBlog">Blog</a></li>
                        <!--                        <li><a href="regular-page.jsp">Giới Thiệu</a></li>-->
                        <li><a href="LienHe">Liên Hệ</a></li>
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
                <%
                    if (ua == null) {%>
                <a href="/project_LTW_war/login"><img src="assets/img/core-img/heart.svg" alt=""></a>
                <%} else {%>
                <a href="/project_LTW_war/wishlist"><img src="assets/img/core-img/heart.svg" alt=""></a>
                <%}%>
            </div>
            <!-- User Login Info -->
            <div class="my-account">
                <a href="#"><img src="assets/img/core-img/user.svg" alt=""></a>
                <ul class="header links">
                    <%
                        if (ua == null) {%>
                    <li><a href="login">Tài khoản của tôi</a></li>
                    <li class="link wishlist" data-bind="scope: 'wishlist'" data-role="wishlist-products-link"><a
                            href="login">Danh sách yêu thích </a></li>
                    <li class="authorization-link" data-label="hoặc"><a
                            href="login">Đăng
                        nhập</a></li>
                    <li><a href="Register">Tạo tài khoản</a></li>
                    <%} else {%>
                    <li><a href="myaccount"><%=ua.getUser_name()%>
                    </a></li>
                    <li class="link wishlist" data-bind="scope: 'wishlist'" data-role="wishlist-products-link"><a
                            href="wishlist">Danh sách yêu thích </a></li>
                    <li class="authorization-link" data-label="hoặc"><a
                            href="Logout">Đăng xuất</a></li>

                    <%}%>
                </ul>
            </div>

            <div class="cart-area">
                <a href="#" id="essenceCartBtn"><img src="assets/img/core-img/bag.svg" alt=""><span>3</span></a>
            </div>
        </div>

    </div>
</header>