package edu.hcmuaf.edu.fit.project_ltw.controller.cart;

import edu.hcmuaf.edu.fit.project_ltw.beans.Cart;
import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;
import edu.hcmuaf.edu.fit.project_ltw.services.WishListService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@WebServlet(name = "AddProductToCart", value = "/addProductToCart")
public class AddProductToCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String idProduct = request.getParameter("id");
        System.out.println(idProduct);
        String colorProduct = request.getParameter("colorProduct");
        System.out.println(colorProduct);
        String sizeProduct = request.getParameter("sizeProduct");
        System.out.println(sizeProduct);
        Product productNew = ProductDao.getInstance().getProductById(idProduct);
        productNew.setColor(colorProduct);
        productNew.setSize(sizeProduct);
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        cart.put(productNew);
        List<Product> list = new ArrayList<Product>();
        list.addAll(cart.getProductList());
        Collections.reverse(list);
        PrintWriter out = response.getWriter();

        out.println(
                "  <div class=\"cart-content d-flex\">\n" +
                "\n" +
                "    <!-- Cart List Area -->\n" +
                "    <div class=\"cart-list\">\n");

        for (Product product:list) {
        out.println("<div class=\"single-cart-item\">\n" +
                "        <a href=\"#\" class=\"product-image\">\n" +
                "          <img src=\""+product.getImg_url()+"\" class=\"cart-thumb\" alt=\"\">\n" +
                "          <!-- Cart Item Desc -->\n" +
                "          <div class=\"cart-item-desc\">\n" +
                "            <span class=\"product-remove\"><i class=\"fa fa-close\" aria-hidden=\"true\"></i></span>\n" +
                "            <span class=\"badge\">"+product.getProduct_type()+"</span>\n" +
                "            <h6>"+product.getProduct_name()+"</h6>\n" +
                "            <p class=\"size\">Size: "+product.getSize()+"</p>\n" +
                "            <p class=\"color\">Màu: "+product.getColor()+"</p>\n" +
                "            <p class=\"color\">Số lượng: "+product.getQuantitySold()+"</p>\n" +
                "            <p class=\"price\">"+product.getPrice()+" đ</p>\n" +
                "          </div>\n" +
                "        </a>\n" +
                "      </div>\n");
        }


        out.println(
                "    </div>\n" +
                "    <!-- Cart Summary -->\n" +
                "    <div class=\"cart-amount-summary\">\n" +
                "      <h2>Summary</h2>\n" +
                "      <ul class=\"summary-table\">\n" +
                "        <li><span>Tạm tính:</span> <span id=\"tamtinh\">"+cart.getTotalMoneyCart()+" đ</span></li>\n" +
                "        <li><span>Phí vận chuyển:</span> <span id=\"phivanchuyen\">"+cart.getFeeShip()+" đ</span></li>\n" +
                "        <li><span>Khuyến mãi:</span> <span id=\"khuyenmai\">-"+cart.getFeePromotion()+"% đ</span></li>\n" +
                "        <li><span>Tổng:</span> <span id=\"tong\">"+cart.getFinalMoneyCart()+" ₫</span></li>\n" +
                "      </ul>\n" +
                "      <div class=\"checkout-btn mt-100\">\n" +
                "        <a href=\"checkout.jsp\" class=\"btn essence-btn\">thanh toán</a>\n" +
                "      </div>\n" +
                "    </div>\n" +
                "  </div>");







    }
}
