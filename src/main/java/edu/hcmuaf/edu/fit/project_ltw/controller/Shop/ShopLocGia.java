package edu.hcmuaf.edu.fit.project_ltw.controller.Shop;

import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShopLocGia", value = "/ShopLocGia")
public class ShopLocGia extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sort = "Shop";
        ProductDao productDao = new ProductDao();
//        String indexPage = request.getParameter("index");
//        if (indexPage == null) {
//            indexPage = "1";
//        }
//        int index = Integer.parseInt(indexPage);

        String minPrice = (request.getParameter("min_price"));
        String maxPrice = (request.getParameter("max_price"));
        int min = Integer.parseInt(minPrice);
        int max = Integer.parseInt(maxPrice);

        int count = productDao.getTotalProductMinMax(min, max);
//        int endPage = count / 9;
//        if (count % 9 != 0) {
//            endPage++;
//        }

        List<Product> list = productDao.pagingProductPriceMinMax(min, max);

        request.setAttribute("listProduct", list);
//        request.setAttribute("endPage", endPage);
        request.setAttribute("count", count);
        request.setAttribute("sort", sort);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sort = "Shop";
        ProductDao productDao = new ProductDao();
//        String indexPage = request.getParameter("index");
//        if (indexPage == null) {
//            indexPage = "1";
//        }
//        int index = Integer.parseInt(indexPage);

        String minPrice = (request.getParameter("min_price"));
        String maxPrice = (request.getParameter("max_price"));
        int min = Integer.parseInt(minPrice);
        int max = Integer.parseInt(maxPrice);

        int count = productDao.getTotalProductMinMax(min, max);
//        int endPage = count / 9;
//        if (count % 9 != 0) {
//            endPage++;
//        }

        List<Product> list = productDao.pagingProductPriceMinMax(min, max);

        request.setAttribute("listProduct", list);
//        request.setAttribute("endPage", endPage);
        request.setAttribute("count", count);
        request.setAttribute("sort", sort);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }
}
