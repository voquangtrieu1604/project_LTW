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

@WebServlet(name = "RemoveProductFromCart", value = "/removeProductFromCart")
public class RemoveProductFromCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String idProduct = request.getParameter("id");
        System.out.println(idProduct);
        HttpSession session = request.getSession();
        Cart cart1 = (Cart) session.getAttribute("cart");
        cart1.remove(idProduct);
        List<Product> list = new ArrayList<Product>();
        list.addAll(cart1.getProductList());
        Collections.reverse(list);
        PrintWriter out = response.getWriter();


        if (list.size() == 0) {

            out.println(" <div class=\"cart-content d-flex\">" +
                    "<div class=\"cart-amount-summary\">" +
                    "<img src=\"assets/img/emptycart.png\">\n" +
                    "        <strong class=\"subtitle empty\" data-bind=\"i18n: 'You have no items in your shopping cart.'\">Không có sản phẩm nào trong giỏ hàng của bạn.</strong>");

        } else {

            out.println(
                    "  <div class=\"cart-content d-flex\">\n" +
                            "\n" +
                            "    <!-- Cart List Area -->\n" +
                            "    <div class=\"cart-list\">\n");

            for (Product product : list) {
                out.println("<div class=\"single-cart-item\" id=\"" + product.getId_product() + product.getSize() + product.getColor() + "\">\n" +
                        "<div class=\"product-remove\"><i class=\"fa fa-close\" aria-hidden=\"true\" id=\"" + product.getId_product() + product.getSize() + product.getColor() + "\" onclick=\"removeThisProduct(this)\"></i></div>"
                        +
                        "        <a href=\"ChiTietSanPham?id_product=" + product.getId_product() + "\" class=\"product-image\">\n" +
                        "          <img src=\"" + product.getImg_url() + "\" class=\"cart-thumb\" alt=\"\">\n" +
                        "          <!-- Cart Item Desc -->\n" +
                        "          <div class=\"cart-item-desc\">\n" +
                        "            <span class=\"badge\">" + product.getProduct_type() + "</span>\n" +
                        "            <h6>" + product.getProduct_name() + "</h6>\n" +
                        "            <p class=\"size\">Size: " + product.getSize() + "</p>\n" +
                        "            <p class=\"color\">Màu: " + product.getColor() + "</p>\n" +
                        "            <p class=\"color\">Số lượng: " + product.getQuantitySold() + "</p>\n" +
                        "            <p class=\"price\">" + product.getPrice() + " đ</p>\n" +
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
                            "        <li><span>Tạm tính:</span> <span id=\"tamtinh\">" + cart1.getTotalMoneyCart() + " đ</span></li>\n" +
                            "        <li><span>Phí vận chuyển:</span> <span id=\"phivanchuyen\">" + cart1.getFeeShip() + " đ</span></li>\n" +
                            "        <li><span>Khuyến mãi:</span> <span id=\"khuyenmai\">-" + cart1.getFeePromotion() + "% đ</span></li>\n" +
                            "        <li><span>Tổng:</span> <span id=\"tong\">" + cart1.getFinalMoneyCart() + " ₫</span></li>\n" +
                            "      </ul>\n" +
                            "<div class=\"row\">\n" +
                            "                    <div class=\"checkout-btn mt-100\" style=\"width: 50%\">\n" +
                            "                        <a href=\"/project_LTW_war/order\" class=\"btn essence-btn\">thanh toán</a>\n" +
                            "                    </div>\n" +
                            "                    <div class=\"checkout-btn mt-100\" style=\"width: 50%\">\n" +
                            "                        <a href=\"/project_LTW_war/cart\" class=\"btn essence-btn\">Xem giỏ hàng</a>\n" +
                            "                    </div>\n" +
                            "                </div>" +
                            "    </div>\n" +
                            "  </div>");


        }


    }
}
