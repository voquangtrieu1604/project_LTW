<%--
  Created by IntelliJ IDEA.
  User: THIS PC
  Date: 8/15/2022
  Time: 12:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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