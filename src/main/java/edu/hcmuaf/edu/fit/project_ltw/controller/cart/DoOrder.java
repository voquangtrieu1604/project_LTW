package edu.hcmuaf.edu.fit.project_ltw.controller.cart;

import edu.hcmuaf.edu.fit.project_ltw.beans.Address;
import edu.hcmuaf.edu.fit.project_ltw.beans.Cart;
import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.AddressDao;
import edu.hcmuaf.edu.fit.project_ltw.dao.OrderDao;
import edu.hcmuaf.edu.fit.project_ltw.dao.UserDao;
import edu.hcmuaf.edu.fit.project_ltw.services.WishListService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "DoOrder", value = "/doOrder")
public class DoOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User ua = (User) request.getSession().getAttribute("auth");
        String ho = request.getParameter("updateHo");
        String ten = request.getParameter("updateTen");
        String cty = request.getParameter("updateCty");
        String tinh = request.getParameter("updateTinh");
        String huyen = request.getParameter("updateHuyen");
        String diachi = request.getParameter("updateDiachi");
        String sdt = request.getParameter("updateSdt");
        String email = request.getParameter("updateEmail");

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Collection<Product> list = new ArrayList<Product>();
        if(cart ==null) {
            cart = Cart.getInstance();
            session.setAttribute("cart", cart);
        }
        User user = UserDao.getInstance().getUserById(ua.getId_user());
//        Address address = AddressDao.getInstance().getAddressById(ua.getId_user());
//        if(user != null){
//            request.setAttribute("account", user);
//            request.setAttribute("address", address);
//        }
//        request.setAttribute("giohang", cart);
        list.addAll(cart.getProductList());
        Collections.reverse((List<Product>) list);
        double randomDouble = Math.random();
          randomDouble =  randomDouble * 9999 + 1;
        String idorder = "OR" + randomDouble;
        OrderDao.getInstance().insertOrder(idorder,user.getId_user(),ho+ten,tinh,huyen,diachi,sdt,email,cart.getFinalMoneyCart(),cty);
        for (Product p: list) {
            OrderDao.getInstance().insertOrderDetail(p.getId_product(),idorder,p.getColor(),p.getSize(),p.getQuantitySold(),p.totalPriceSold());
        }
        cart.getCart().clear();
        cart.checkOut();


    }
}
