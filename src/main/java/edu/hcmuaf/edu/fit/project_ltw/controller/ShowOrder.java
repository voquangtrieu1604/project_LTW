package edu.hcmuaf.edu.fit.project_ltw.controller;

import edu.hcmuaf.edu.fit.project_ltw.beans.Address;
import edu.hcmuaf.edu.fit.project_ltw.beans.Cart;
import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.AddressDao;
import edu.hcmuaf.edu.fit.project_ltw.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "ShowOrder", value = "/showOrder")
public class ShowOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Collection<Product> list = new ArrayList<Product>();
        if(cart ==null) {
            cart = Cart.getInstance();
            session.setAttribute("cart", cart);
        }

        User ua = (User) session.getAttribute("auth");
        User user = UserDao.getInstance().getUserById(ua.getId_user());
        Address address = AddressDao.getInstance().getAddressById(ua.getId_user());
        if(user != null){
            request.setAttribute("account", user);
            request.setAttribute("address", address);
        }
        request.setAttribute("giohang", cart);
        list.addAll(cart.getProductList());
        Collections.reverse((List<Product>) list);
        request.setAttribute("listProductCart", list);
        request.getRequestDispatcher("checkout.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
