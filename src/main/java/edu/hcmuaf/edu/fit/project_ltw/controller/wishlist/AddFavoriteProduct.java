package edu.hcmuaf.edu.fit.project_ltw.controller.wishlist;

import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.WishListDao;
import edu.hcmuaf.edu.fit.project_ltw.services.WishListService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddFavoriteProduct", value = "/addFavoriteProduct")
public class AddFavoriteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idProduct = request.getParameter("id");
        User ua = (User) request.getSession().getAttribute("auth");
        int idWishlist = WishListDao.getInstance().getNumberid(ua.getId_user());
        idWishlist++;
        WishListService.getInstance().addIntoWishlist(ua.getId_user(),idProduct,idWishlist);

    }
}
