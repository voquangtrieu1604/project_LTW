package edu.hcmuaf.edu.fit.project_ltw.controller.wishlist;

import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.services.WishListService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet(name = "SortListProductFavortite", value = "/sortListProductFavortite")
public class SortListProductProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String idProduct = request.getParameter("type");
        HttpSession session = request.getSession();
        User ua =null;
        if(session.getAttribute("auth")!=null) {
            ua = (User) session.getAttribute("auth");
        }
        List<Product> listProduct = WishListService.getInstance().getListProductWishListById(ua.getId_user());
        Collections.sort(listProduct, new Comparator<Product>() {
            @Override
            public int compare(Product o1, Product o2) {
                return (int) (o1.getPrice()-o2.getPrice());
            }
        });

        PrintWriter out = response.getWriter();
//        out.println(" <div><p>nguyen van phuochau</p></div>");
        for (Product p: listProduct) {
            out.println("<div class=\"col-12 col-sm-6 col-lg-4\" id="+p.getId_product()+">\n" +
                    "                        <div class=\"single-product-wrapper\">\n" +
                    "                            <!-- Product Image -->\n" +
                    "                            <div class=\"product-img\">\n" +
                    "                                <img src=\""+p.getImg_url()+"\" alt=\"\">\n" +
                    "                                <!-- Hover Thumb -->\n" +
                    "                                <img class=\"hover-img\" src=\"assets/img/product/product-1-2.jpg\" alt=\"\">\n" +
                    "\n" +
                    "                                <!-- Product Badge -->\n" +
                    "                                <div class=\"product-badge offer-badge\">\n" +
                    "                                    <span>-40%</span>\n" +
                    "                                </div>\n" +
                    "                                <!-- Favourite -->\n" +
                    "                                <div class=\"product-favourite\">\n" +
                    "                                    <a id=\""+p.getId_product()+"\" onclick=\"clickheart(this)\" class=\"favme fa fa-heart active\" pid="+p.getId_product()+"></a>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "\n" +
                    "                            <!-- Product discription -->\n" +
                    "                            <div class=\"product-discription\">\n" +
                    "                                <span>Áo sơ mi</span>\n" +
                    "                                <a href=\"single-product-details.jsp\">\n" +
                    "                                    <h6>"+p.getProduct_name()+"</h6>\n" +
                    "                                </a>\n" +
                    "                                <p class=\"product-price\"><span class=\"old-price\">498.000 ₫</span> "+p.getPrice()+" ₫</p>\n" +
                    "\n" +
                    "                                <!-- Hover Content -->\n" +
                    "                                <div class=\"hover-content\">\n" +
                    "                                    <!-- Add to Cart -->\n" +
                    "                                    <div class=\"add-to-cart-btn\">\n" +
                    "                                        <a href=\"#\" class=\"btn essence-btn\">Thêm vào giỏ hàng</a>\n" +
                    "                                    </div>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                    </div>");
        }




    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
