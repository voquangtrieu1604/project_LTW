package edu.hcmuaf.edu.fit.project_ltw.dao;

import edu.hcmuaf.edu.fit.project_ltw.beans.CartItem;
import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class CartDao {
    private static CartDao instance;

    public static CartDao getInstance() {
        if (instance == null)
            instance = new CartDao();
        return instance;
    }

    public List<CartItem> getListCartItemById(String id) {
        try {
            List<CartItem> re = DbConnector.get().withHandle(h -> h.createQuery("select * from cart where id_user= :id_user")
                    .bind("id_user",id)
                    .mapToBean(CartItem.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }

    public Map<String, Product> getCart(String idUser){
        Map<String,Product> re = new HashMap<>();
        List<CartItem> list = getListCartItemById(idUser);
        for (CartItem c:list) {
            Product pd = ProductDao.getInstance().getProductById(c.getProduct_id());
            pd.setColor(c.getColor());
            pd.setSize(c.getSize());
            pd.setQuantitySold(c.getC_amount_bought());
            re.put(c.getProduct_id()+c.getSize()+c.getColor(),pd);
        }
        return re;
    }

    public void insertCart(String idUser, String idProduct,String color, String size,int amount) {

        try {
            DbConnector.get().withHandle(h -> h.createUpdate("insert into cart (id_user, product_id, color, p_size, c_amount_bought) values (:id_user, :product_id, :color, :size, :c_amount_bought)")
                    .bind("id_user", idUser)
                    .bind("product_id", idProduct)
                    .bind("color", color)
                    .bind("size", size)
                    .bind("c_amount_bought", amount).execute());
        } catch (Exception exception) {
            System.out.println(exception);


        }
    }

//    public void insertCart(String idUser, String idProduct,String color, String size,int amount) {
//
//        try {
//            DbConnector.get().withHandle(h -> h.createUpdate("insert into cart (id_user, product_id, color, size, c_amount_bought) values (:id_user, :product_id, :color, :size, :c_amount_bought)")
//                    .bind("id_user", idUser)
//                    .bind("product_id", idProduct)
//                    .bind("color", color)
//                    .bind("size", size)
//                    .bind("c_amount_bought", amount).execute());
//        } catch (Exception exception) {
//            System.out.println(exception);
//
//
//        }
//    }



    public void romvecart(String idUser, String idProduct,String color, String size) {

        try {
            DbConnector.get().withHandle(h -> h.createUpdate("delete from cart where id_user= :id_user and product_id= :product_id and color= :color and p_size= :size")
                    .bind("id_user", idUser)
                    .bind("product_id", idProduct)
                    .bind("color", color)
                    .bind("size", size).execute());
        } catch (Exception exception) {
            System.out.println(exception);


        }
    }

    public void updatecart(String idUser, String idProduct,String color, String size, int amount) {

        try {
            DbConnector.get().withHandle(h -> h.createUpdate("update cart set c_amount_bought= :c_amount_bought where id_user= :id_user and product_id= :product_id and color= :color and p_size= :size")
                    .bind("c_amount_bought", amount)
                    .bind("id_user", idUser)
                    .bind("product_id", idProduct)
                    .bind("color", color)
                    .bind("size", size).execute());
        } catch (Exception exception) {
            System.out.println(exception);


        }
    }

    public void romveAllcart(String idUser) {

        try {
            DbConnector.get().withHandle(h -> h.createUpdate("delete from cart where id_user= :id_user")
                    .bind("id_user", idUser)
                  .execute());
        } catch (Exception exception) {
            System.out.println(exception);


        }
    }


    public static void main(String[] args) {
        getInstance().romvecart("UA0009","PD0003","đen","XL");
    }


}
