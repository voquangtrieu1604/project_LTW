package edu.hcmuaf.edu.fit.project_ltw.controller;

import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        if(session.getAttribute("auth")!=null) {
            String username = request.getParameter("username");
            String pass = request.getParameter("password");
            System.out.println("username "+username+", pass: "+pass);
            User ua = new UserService().checkLogin(username,pass);
            request.setAttribute("userInfor",ua);
            HttpSession s = request.getSession();
            System.out.println("user account :"+ua.getUser_name());
            s.setAttribute("auth",ua);
        }

        request.getRequestDispatcher("login.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        User ua = new UserService().checkLogin(username,pass);
        if(ua==null){
            String error = "sai thông tin đăng nhập."

                    ;request.setAttribute("error",error);request.getRequestDispatcher("login.jsp").forward(request,response);
            return;
        }
        request.setAttribute("userInfor",ua);
        HttpSession s = request.getSession();
        s.setAttribute("auth",ua);
        String x = (String) s.getAttribute("previousPage");
        if(x==null){
            x = "index.jsp";
        }else{
            x = x.substring(1,x.length());
        }
        response.sendRedirect(x);
    }
}
