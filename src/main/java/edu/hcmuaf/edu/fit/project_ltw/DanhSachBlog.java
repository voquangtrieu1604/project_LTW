package edu.hcmuaf.edu.fit.project_ltw;

import edu.hcmuaf.edu.fit.project_ltw.beans.Blog;
import edu.hcmuaf.edu.fit.project_ltw.beans.Search;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DanhSachBlog", value = "/DanhSachBlog")
public class DanhSachBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Blog> blogs = Search.searchBlogByNumber(10);
        for (Blog b:blogs
        ) {
            b.loadComment();
        }
        request.setAttribute("blogs",blogs);
        request.getRequestDispatcher("blog.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
