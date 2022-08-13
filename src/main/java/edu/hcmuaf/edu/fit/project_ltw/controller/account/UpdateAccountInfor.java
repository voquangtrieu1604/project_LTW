package edu.hcmuaf.edu.fit.project_ltw.controller.account;

import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

@WebServlet(name = "UpdateAccountInfor", value = "/updateAccountInfor")
public class UpdateAccountInfor extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User ua = (User) request.getSession().getAttribute("auth");
        String username = request.getParameter("updateUserName");
        System.out.println(username);
        String email = request.getParameter("updateEmail");
        System.out.println(email);
        String phone = request.getParameter("updatePhone");
        System.out.println(phone);
        String pass = request.getParameter("confirmPass");
        System.out.println(pass);
        PrintWriter out = response.getWriter();

        }
        else {
            UserService.getInstance().updateUserInfor(ua.getId_user(),username,email,phone);
        }

    }

    public static boolean patternMatches(String emailAddress, String regexPattern) {
        return Pattern.compile(regexPattern)
                .matcher(emailAddress)
                .matches();
    }
}
