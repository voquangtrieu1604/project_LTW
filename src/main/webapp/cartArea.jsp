<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.Cart" %>
<%@ page import="java.util.Collection" %>
<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: THIS PC
  Date: 8/15/2022
  Time: 12:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  Cart cart =null;
  Collection<Product> list = new ArrayList<Product>();
  if(session.getAttribute("cart")!=null) {
    cart = (Cart) session.getAttribute("cart");
    list = cart.getProductList();
  }
%>
<div class="right-side-cart-area">

  <!-- Cart Button -->
  <div class="cart-button">
    <a href="#" id="rightSideCart"><img src="assets/img/core-img/bag.svg" alt=""> <span>
      <%if (list == null) {%>0<%} else {%><%=list.size()%><%}%></span></a>
  </div>

  <div class="cart-content d-flex">

    <!-- Cart List Area -->
    <div class="cart-list">
      <!-- Single Cart Item -->
      <%for(Product p :list) {%>
      <div class="single-cart-item">
        <a href="#" class="product-image">
          <img src="assets/img/product/product-1-1.jpg" class="cart-thumb" alt="">
          <!-- Cart Item Desc -->
          <div class="cart-item-desc">
            <span class="product-remove"><i class="fa fa-close" aria-hidden="true"></i></span>
            <span class="badge"><%=p.getProduct_type()%></span>
            <h6><%=p.getProduct_name()%></h6>
            <p class="size">Size: M</p>
            <p class="color">Màu: Trắng</p>
            <p class="price"><%=p.getPrice()%> đ</p>
          </div>
        </a>
      </div>
      <%}%>
    </div>

    <!-- Cart Summary -->
    <div class="cart-amount-summary">
      <%if (list.size() ==0) {%>
      <img src="assets/img/emptycart.png">
      <strong class="subtitle empty" data-bind="i18n: 'You have no items in your shopping cart.'">Không có sản phẩm nào trong giỏ hàng của bạn.</strong>
      <%} else {%>
      <h2>Summary</h2>
      <ul class="summary-table">
        <li><span>Tạm tính:</span> <span></span><%=cart.getTotalMoneyCart()%> đ</li>
        <li><span>Phí vận chuyển:</span> <span>Free</span></li>
        <li><span>Khuyến mãi:</span> <span>-0%</span></li>
        <li><span>Tổng:</span> <span>1.5769.000 ₫</span></li>
      </ul>
      <div class="checkout-btn mt-100">
        <a href="checkout.jsp" class="btn essence-btn">thanh toán</a>
      </div>
      <%}%>


    </div>
  </div>
</div>