package edu.hcmuaf.edu.fit.project_ltw;


import edu.hcmuaf.edu.fit.project_ltw.beans.DangKy;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");


        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        User user = UserService.getInstance().checkAccountRegister(name, email);
        if (user == null) {

            String pass = DangKy.getMD5(password);
            DangKy.registerAutoID_user(name, email, pass);

            String line = "<script>window.setTimeout(function(){window.location.href = \"login\";}, 1000);</script>";
            response.getWriter().println();
            PrintWriter out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html><head>");
            out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
            out.println("<title>notice</title></head>");
            out.println("<body>");
            out.println(line);
            out.println("</body>");
            out.println("</html>");

        } else {
            String error = "Thông tin đăng nhập đã tồn tại trên hệ thống.";
            request.setAttribute("error", error);
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
    }
}
