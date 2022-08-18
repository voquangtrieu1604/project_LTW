package edu.hcmuaf.edu.fit.project_ltw.dao;

import edu.hcmuaf.edu.fit.project_ltw.beans.Order;
import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;
import org.jdbi.v3.core.mapper.reflect.ConstructorMapper;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class OrderDao {
    private static OrderDao instance;

    public static OrderDao getInstance() {
        if (instance == null)
            instance = new OrderDao();
        return instance;
    }

    public List<Order> getOrderById(String idUser) {
        try {
            List<Order> re = DbConnector.get().withHandle(h -> h.createQuery("select * from order_product where id_user= :id_user")
                    .bind("id_user",idUser)
                    .mapToBean(Order.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }

    }

    public List<String> getProductidInOrder(String id) {
        try {
            List<String> re = DbConnector.get().withHandle(h -> h.createQuery("select product_id from order_detail where id_order= :id_order")
                    .bind("id_order", id)
                    .mapTo(String.class)
                    .list());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }

    public Order getSimOrderById(String id) {
        try {
            Order re = DbConnector.get().withHandle(h -> h.createQuery("select * from order_product where id_order= :id_order")
                    .bind("id_order", id)
                    .registerRowMapper(ConstructorMapper.factory(Order.class))
                    .mapToBean(Order.class)
                    .one());

            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }

    public void insertOrder(String idOrder, String idUser, String hoten, String tinh, String huyen, String diachi, String phone, String email, double money, String note) {
        LocalDateTime current = LocalDateTime.now();
        try {
            DbConnector.get().withHandle(h -> h.createUpdate("insert into order_product (id_order, id_user, hoten, thanhpho, huyen, address, phone, email, state, total_money, date_time, note) values (:id_order, :id_user, :hoten, :thanhpho, :huyen, :address, :phone, :email, :state, :total_money, :date_time, :note)")
                    .bind("id_order", idOrder)
                    .bind("id_user", idUser)
                    .bind("hoten", hoten)
                    .bind("thanhpho", tinh)
                    .bind("huyen", huyen)
                    .bind("address", diachi)
                    .bind("phone", phone)
                    .bind("email", email)
                    .bind("state", "Đang đóng gói")
                    .bind("total_money", money)
                    .bind("date_time", current.toString())
                    .bind("note", note).execute());
        } catch (Exception exception) {
            System.out.println(exception);
        }
    }

    public void insertOrderDetail(String idpduct, String idorder, String color, String size, int amount, double money) {
        LocalDateTime current = LocalDateTime.now();
        try {
            DbConnector.get().withHandle(h -> h.createUpdate("insert into order_detail (product_id, id_order, color, size, amount_bought, price_bought) values (:product_id, :id_order, :color, size, :amount_bought, :price_bought)")
                    .bind("product_id", idpduct)
                    .bind("id_order", idorder)
                    .bind("color", color)
                    .bind("size", size)
                    .bind("amount_bought", amount)
                    .bind("price_bought", money).execute());
        } catch (Exception exception) {
            System.out.println(exception);
        }
    }

    public int getamountProduct(String idoder, String idproduct) {
        try {
            List<Integer> re = DbConnector.get().withHandle(h -> h.createQuery("select amount_bought from order_detail where product_id= :product_id and id_order= :id_order")
                    .bind("product_id", idproduct)
                    .bind("id_order", idoder)
                    .mapTo(Integer.class)
                    .list());
            if (re.size()==0){
                return 0;
            }
            else {
                return re.get(0);
            }
        } catch (Exception exception) {
            System.out.println(exception);
            return 0;

        }
    }

    public String getSize(String idoder, String idproduct) {
        try {
            String re = DbConnector.get().withHandle(h -> h.createQuery("select size from order_detail where product_id= :product_id and id_order= :id_order")
                    .mapTo(String.class)
                    .one());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return "";

        }

    }

    public String getColor(String idoder, String idproduct) {
        try {
            String re = DbConnector.get().withHandle(h -> h.createQuery("select color from order_detail where product_id= :product_id and id_order= :id_order")
                    .mapTo(String.class)
                    .one());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return "";

        }

    }

    public static void main(String[] args) {
        System.out.println(getInstance().getOrderById("UA0009"));

    }
}
