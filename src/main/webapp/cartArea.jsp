<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.Cart" %>
<%@ page import="java.util.Collection" %>
<%@ page import="edu.hcmuaf.edu.fit.project_ltw.beans.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: THIS PC
  Date: 8/15/2022
  Time: 12:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    Cart cart = null;
    Collection<Product> list = new ArrayList<Product>();
    if (session.getAttribute("cart") != null) {
        cart = (Cart) session.getAttribute("cart");
        list.addAll(cart.getProductList());
        Collections.reverse((List<Product>) list);
    }

%>
<div class="right-side-cart-area" id="cartArea">

    <!-- Cart Button -->
    <div class="cart-button">
        <a href="#" id="rightSideCart"><img src="assets/img/core-img/bag.svg" alt=""> <span id="numberProductCart">
      <%if (list.size()==0) {%>0<%} else {%><%=cart.getNumberProductInCart()%><%}%></span></a>
    </div>
    <div id="listCart">
        <div class="cart-content d-flex">

            <!-- Cart List Area -->
            <div class="cart-list">
                <!-- Single Cart Item -->
                <%for (Product p : list) {%>
                <div class="single-cart-item" id="<%=p.getId_product()%><%=p.getSize()%><%=p.getColor()%>">
                    <div class="product-remove"><i class="fa fa-close" aria-hidden="true"
                                                   id="<%=p.getId_product()%><%=p.getSize()%><%=p.getColor()%>"
                                                   onclick="removeThisProduct(this)"></i></div>
                    <a href="ChiTietSanPham?id_product=<%=p.getId_product()%>" class="product-image">
                        <img src="<%=p.getImg_url()%>" class="cart-thumb" alt="">
                        <!-- Cart Item Desc -->
                        <div class="cart-item-desc">

                            <span class="badge"><%=p.getProduct_type()%></span>
                            <h6><%=p.getProduct_name()%>
                            </h6>
                            <p class="size">Size: <%=p.getSize()%>
                            </p>
                            <p class="color">Màu: <%=p.getColor()%>
                            </p>
                            <p class="color">Số lượng: <%=p.getQuantitySold()%>
                            </p>
                            <p class="price"><%=p.getPrice()%> đ</p>
                        </div>
                    </a>
                </div>
                <%}%>
            </div>

            <!-- Cart Summary -->
            <div class="cart-amount-summary">
                <%if (list.size() == 0) {%>
                <img src="assets/img/emptycart.png">
                <strong class="subtitle empty" data-bind="i18n: 'You have no items in your shopping cart.'">Không có sản
                    phẩm nào trong giỏ hàng của bạn.</strong>
                <%} else {%>
                <h2>Summary</h2>
                <ul class="summary-table">
                    <li><span>Tạm tính:</span> <span id="tamtinh"><%=cart.getTotalMoneyCart()%> đ</span></li>
                    <li><span>Phí vận chuyển:</span> <span id="phivanchuyen"><%=cart.getFeeShip()%> đ</span></li>
                    <li><span>Khuyến mãi:</span> <span id="khuyenmai">-<%=cart.getFeePromotion()%>% đ</span></li>
                    <li><span>Tổng:</span> <span id="tong"><%=cart.getFinalMoneyCart()%> ₫</span></li>
                </ul>
                <div class="row">
                    <div class="checkout-btn mt-100" style="width: 50%">
                        <a href="/project_LTW_war/showOrder" class="btn essence-btn">thanh toán</a>
                    </div>
                    <div class="checkout-btn mt-100" style="width: 50%">
                        <a href="/project_LTW_war/cart" class="btn essence-btn">Xem giỏ hàng</a>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>

</div>