package edu.hcmuaf.edu.fit.project_ltw.controller.account;

import edu.hcmuaf.edu.fit.project_ltw.beans.Order;
import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.OrderDao;
import edu.hcmuaf.edu.fit.project_ltw.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShowMyOrder", value = "/showMyOrder")
public class ShowMyOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User ua = (User) request.getSession().getAttribute("auth");
        User user = UserDao.getInstance().getUserById(ua.getId_user());
        List<Order> list = OrderDao.getInstance().getOrderById(user.getId_user());
        if(user != null){
            request.setAttribute("account", user);
            request.setAttribute("listOrder", list);
        }
//        List<Product> listString = new ArrayList<Product>();
//        for (String s: OrderDao.getInstance().getProductidInOrder()) {
//
//        }

        request.getRequestDispatcher("myorder.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
