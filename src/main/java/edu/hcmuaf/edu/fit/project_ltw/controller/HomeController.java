package edu.hcmuaf.edu.fit.project_ltw.controller;

import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.WishListDao;
import edu.hcmuaf.edu.fit.project_ltw.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Home", value = "/project_LTW_war")
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> listProduct = ProductService.getInstance().listProduct();
        User ua = (User) request.getSession().getAttribute("auth");
        if (ua != null){
            List<String> listWishlistid = WishListDao.getInstance().getListWishListIdById(ua.getId_user());
            request.setAttribute("wishlistid", listWishlistid);

        }
        request.setAttribute("products", listProduct);

        request.getRequestDispatcher("index.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
