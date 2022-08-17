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

@WebServlet(name = "DelProductFromMainCart", value = "/delProductFromMainCart")
public class DelProductFromMainCart extends HttpServlet {
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
        PrintWriter out = response.getWriter();

        out.println("<table class=\"total-table\">\n" +
                "                            <thead class=\"total-table-head\">\n" +
                "                            <tr class=\"table-total-row\">\n" +
                "                                <th>Tổng cộng</th>\n" +
                "                                <th>Giá</th>\n" +
                "                            </tr>\n" +
                "                            </thead>\n" +
                "                            <tbody>\n" +
                "                            <tr class=\"total-data\">\n" +
                "                                <td><strong>Tạm tính: </strong></td>\n" +
                "                                <td>"+cart1.getTotalMoneyCart()+" đ</td>\n" +
                "                            </tr>\n" +
                "                            <tr class=\"total-data\">\n" +
                "                                <td><strong>Tiền ship: </strong></td>\n" +
                "                                <td>"+cart1.getFeeShip()+" đ</td>\n" +
                "                            </tr>\n" +
                "                            <tr class=\"total-data\">\n" +
                "                                <td><strong>Khuyến mải: </strong></td>\n" +
                "                                <td>-"+cart1.getFeePromotion()+"%</td>\n" +
                "                            </tr>\n" +
                "                            <tr class=\"total-data\">\n" +
                "                                <td><strong>Tất cả: </strong></td>\n" +
                "                                <td>"+cart1.getFinalMoneyCart()+" đ</td>\n" +
                "                            </tr>\n" +
                "                            </tbody>\n" +
                "                        </table>\n" +
                "                        <div class=\"cart-buttons\">\n" +
                "                            <a href=\"/Shop\" class=\"boxed-btn\">Tiếp tục mua</a>\n" +
                "                            <a href=\"/checkout\" class=\"boxed-btn black\">Đặt hàng</a>\n" +
                "                        </div>");








    }
}
