package edu.hcmuaf.edu.fit.project_ltw;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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

        String pass = edu.hcmuaf.edu.fit.project_ltw.beans.Register.getMD5(password);
        edu.hcmuaf.edu.fit.project_ltw.beans.Register.registerAutoID_user(name, email, pass);

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

    }
}
