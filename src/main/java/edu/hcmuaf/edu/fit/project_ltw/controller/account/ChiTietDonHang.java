package edu.hcmuaf.edu.fit.project_ltw.controller.account;

import edu.hcmuaf.edu.fit.project_ltw.beans.*;
import edu.hcmuaf.edu.fit.project_ltw.dao.OrderDao;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ChiTietDonHang", value = "/ChiTietDonHang")
public class ChiTietDonHang extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Product p = Search.searchProductById(request.getParameter("id_order"));
        String idOrder = request.getParameter("id_order");
        List<Product> listProductOrder = new ArrayList<>();
        for (String s: OrderDao.getInstance().getProductidInOrder(request.getParameter("id_order"))) {
            Product p = ProductDao.getInstance().getProductById(s);
            p.setQuantitySold(OrderDao.getInstance().getamountProduct(idOrder,s));
            p.setSize(OrderDao.getInstance().getSize(idOrder,s));
            p.setColor(OrderDao.getInstance().getColor(idOrder,s));
            listProductOrder.add(p);
        }
        Order order = OrderDao.getInstance().getSimOrderById(request.getParameter("id_order"));
        request.setAttribute("listProduct",listProductOrder);
        User ua = (User) request.getSession().getAttribute("auth");
        request.setAttribute("ua",ua);
        request.setAttribute("order",order);
        request.setAttribute("orderid",request.getParameter("id_order"));
        request.getRequestDispatcher("orderdetail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
