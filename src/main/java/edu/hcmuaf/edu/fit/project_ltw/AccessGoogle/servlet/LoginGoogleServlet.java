package edu.hcmuaf.edu.fit.project_ltw.AccessGoogle.servlet;

import edu.hcmuaf.edu.fit.project_ltw.AccessGoogle.common.GooglePojo;
import edu.hcmuaf.edu.fit.project_ltw.AccessGoogle.common.GoogleUtils;
import edu.hcmuaf.edu.fit.project_ltw.beans.Cart;
import edu.hcmuaf.edu.fit.project_ltw.beans.DangKy;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.services.UserService;
//import edu.hcmuaf.edu.fit.project_ltw.AccessGoogle.common.GoogleUtils;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login-google")
public class LoginGoogleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginGoogleServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = GoogleUtils.getToken(code);
            GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
            request.setAttribute("id", googlePojo.getId());
            request.setAttribute("name", googlePojo.getName());
            request.setAttribute("email", googlePojo.getEmail());

            UserService us = new UserService();


            if (us.checkGmailGoogle(googlePojo.getEmail()) == null) {

                DangKy.registerAccountGoogle(googlePojo.getId(), googlePojo.getEmail(), googlePojo.getEmail());

                User ua = new UserService().checkLoginGoogle(googlePojo.getId(), googlePojo.getEmail());
                request.setAttribute("userInfor", ua);
                HttpSession s = request.getSession();
                System.out.println("user account :" + ua.getId_user());
                s.setAttribute("auth", ua);
            } else {

                User ua = new UserService().checkGmailGoogle(googlePojo.getEmail());
                request.setAttribute("userInfor", ua);
                HttpSession s = request.getSession();
                Cart cart = new Cart(ua.getId_user());
                s.setAttribute("cart",cart);
                request.setAttribute("cart", cart);
                System.out.println("user account :" + ua.getId_user());
                s.setAttribute("auth", ua);
            }


            RequestDispatcher dis = request.getRequestDispatcher("home");
            dis.forward(request, response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);

    }

}
