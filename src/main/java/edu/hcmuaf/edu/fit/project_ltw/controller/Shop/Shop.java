package edu.hcmuaf.edu.fit.project_ltw.controller.Shop;

import edu.hcmuaf.edu.fit.project_ltw.beans.Cart;
import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;
import edu.hcmuaf.edu.fit.project_ltw.dao.WishListDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet(name = "Shop", value = "/Shop")
public class Shop extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sort = "Shop";
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);


        ProductDao productDao = new ProductDao();
        int count = productDao.getTotalProduct();
        int endPage = count / 9;
        if (count % 9 != 0) {
            endPage++;
        }
        List<String> listWishlistid = new ArrayList<>();
        User ua = (User) request.getSession().getAttribute("auth");
        if (ua != null){
            listWishlistid = WishListDao.getInstance().getListWishListIdById(ua.getId_user());
//            Cart cart = new Cart();
//            HttpSession s = request.getSession();
//            s.setAttribute("cart",cart);
        }

        request.setAttribute("wishlistid", listWishlistid);
        List<Product> list = productDao.pagingProduct(index);


        request.setAttribute("listProduct", list);
        request.setAttribute("endPage", endPage);
        request.setAttribute("count", count);
        request.setAttribute("sort",sort);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}