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
import java.util.List;

@WebServlet(name = "WishList", value = "/wishlist")
public class WishListShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User ua =null;
        if(session.getAttribute("auth")!=null) {
            ua = (User) session.getAttribute("auth");
        }
        List<Product> listProduct = WishListService.getInstance().getListProductWishListById(ua.getId_user());
        request.setAttribute("wishlistproducts", listProduct);
        request.getRequestDispatcher("wishlist.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
