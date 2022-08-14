//package edu.hcmuaf.edu.fit.project_ltw;
//
//import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
//import edu.hcmuaf.edu.fit.project_ltw.beans.ProductClassification;
//import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet(name = "GiaTot", value = "/GiaTot")
//public class GiaTot extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String indexPage = request.getParameter("index");
//        if (indexPage == null) {
//            indexPage = "1";
//        }
//        int index = Integer.parseInt(indexPage);
//
//
//        ProductDao productDao = new ProductDao();
//        int count = productDao.getTotalProductSale();
//        int endPage = count / 9;
//        if (count % 9 != 0) {
//            endPage++;
//        }
//
//        List<Product> list = productDao.pagingProductSale(index);
//
//        request.setAttribute("listProduct", list);
//        request.setAttribute("endPage", endPage);
//        request.getRequestDispatcher("giaTot.jsp").forward(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//}