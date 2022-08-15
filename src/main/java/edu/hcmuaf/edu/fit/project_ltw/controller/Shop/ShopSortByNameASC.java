package edu.hcmuaf.edu.fit.project_ltw.controller.Shop;

import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShopSortByNameASC", value = "/Shop_sort_title_ascending")
public class ShopSortByNameASC extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sort = "Shop";
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);


        ProductDao productDao = new ProductDao();
        int count = productDao.getTotalProduct();
        int endPage = count / 9;
        if (count % 9 != 0) {
            endPage++;
        }

        List<Product> list = productDao.pagingProductNameASC(index);

        request.setAttribute("listProduct", list);
        request.setAttribute("endPage", endPage);
        request.setAttribute("count", count);
        request.setAttribute("sort",sort);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
