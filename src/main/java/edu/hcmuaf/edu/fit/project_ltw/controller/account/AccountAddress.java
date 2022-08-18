package edu.hcmuaf.edu.fit.project_ltw.controller.account;

import edu.hcmuaf.edu.fit.project_ltw.beans.Address;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.AddressDao;
import edu.hcmuaf.edu.fit.project_ltw.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AccountAddress", value = "/accountAddress")
public class AccountAddress extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User ua = (User) request.getSession().getAttribute("auth");
        User user = UserDao.getInstance().getUserById(ua.getId_user());
        Address address = AddressDao.getInstance().getAddressById(ua.getId_user());
        if(user != null){
            request.setAttribute("account", user);
            request.setAttribute("address", address);
        }
        request.getRequestDispatcher("account_Address.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
