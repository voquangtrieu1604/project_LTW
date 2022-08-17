package edu.hcmuaf.edu.fit.project_ltw.controller.cart;

import edu.hcmuaf.edu.fit.project_ltw.beans.Cart;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UpdateNumberCart", value = "/updateNumberCart")
public class UpdateNumberCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String idProduct = request.getParameter("id");
        Cart cart = (Cart) session.getAttribute("cart");
//        int num = cart.getCart().get(idProduct).getQuantitySold();
        PrintWriter out = response.getWriter();
        out.println(cart.getNumberProductInCart());


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
