package edu.hcmuaf.edu.fit.project_ltw.controller.account;

import edu.hcmuaf.edu.fit.project_ltw.beans.Address;
import edu.hcmuaf.edu.fit.project_ltw.beans.DangKy;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.AddressDao;
import edu.hcmuaf.edu.fit.project_ltw.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

@WebServlet(name = "UpdateAddress", value = "/updateAddress")
public class UpdateAddress extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User ua = (User) request.getSession().getAttribute("auth");
        String surname = request.getParameter("updateSurname");
        String name = request.getParameter("updateName");
        String phone = request.getParameter("updatePhone");
        String duong = request.getParameter("updateDuong");
        String tinh = request.getParameter("updateTinh");
        System.out.println(tinh);
        String huyen = request.getParameter("updateHuyen");
        System.out.println(tinh);
        String xa = request.getParameter("updateXa");
        String zip = request.getParameter("updateZip");
        AddressDao.getInstance().updateAddress(ua.getId_user(),surname,name,phone,duong,tinh,huyen,xa,zip);
    }

    public static boolean patternMatches(String emailAddress, String regexPattern) {
        return Pattern.compile(regexPattern)
                .matcher(emailAddress)
                .matches();
    }
}
