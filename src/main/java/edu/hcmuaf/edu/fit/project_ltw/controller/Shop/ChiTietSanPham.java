package edu.hcmuaf.edu.fit.project_ltw.controller.Shop;

import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.ProductFunction;
import edu.hcmuaf.edu.fit.project_ltw.beans.Search;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ChiTietSanPham", value = "/ChiTietSanPham")
public class ChiTietSanPham extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("run to chi tiet san pham,id: "+request.getParameter("id_product"));
        Product p = Search.searchProductById(request.getParameter("id_product"));
//        p.loadComment();
            request.setAttribute("product",p);
//        //set set number attributes
//        request.setAttribute("numberstarsArray", ProductFunction.returnNumberStar(p.getRawCommentProducts()));
//        //relate products:
//        request.setAttribute("relateProducts", ProductFunction.searchProductByTypeAndQuantity(p.getProduct_type(),5));
        request.getRequestDispatcher("single-product-details.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
