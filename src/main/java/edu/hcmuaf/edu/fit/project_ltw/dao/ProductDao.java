package edu.hcmuaf.edu.fit.project_ltw.dao;


import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;
import org.jdbi.v3.core.mapper.reflect.ConstructorMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductDao {
    private static ProductDao instance;

    public static ProductDao getInstance() {
        if (instance == null)
            instance = new ProductDao();
        return instance;
    }

    public List<Product> getListProduct() {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from product")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }

    }

    public List<Product> getListProductTop9() {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from product limit 9")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }


    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product order by id_product limit ?,9";
        try {
            Connection conn = new DbConnector().connect();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4), rs.getInt(5),
                        rs.getInt(6), rs.getDouble(7), rs.getString(8),
                        rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
            return null;
        }
        return list;

    }
    public List<Product> pagingProductSale(int index) {
        List<Product> list = new ArrayList<>();
            String query = "select * from product WHERE percent_discount not like 0 order by id_product limit ?,9 ";
        try {
            Connection conn = new DbConnector().connect();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 9);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4), rs.getInt(5),
                        rs.getInt(6), rs.getDouble(7), rs.getString(8),
                        rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
            return null;
        }
        return list;

    }

    public int getTotalProduct() {
        String query = "select count(*) from product";
        try {
            Connection conn = new DbConnector().connect();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return 0;
    }
    public int getTotalProductSale() {
        String query = "SELECT count(*) FROM `product` WHERE percent_discount NOT LIKE 0 ";
        try {
            Connection conn = new DbConnector().connect();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return 0;
    }

    public Product getProductById(String id) {
        try {
            Product re = DbConnector.get().withHandle(h -> h.createQuery("select * from product where id_product= :id_product")
                    .bind("id_product", id)
                    .registerRowMapper(ConstructorMapper.factory(Product.class))
                    .mapToBean(Product.class)
                    .one());

            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }


    public static void main(String[] args) {
//        System.out.println(getInstance().getProductById("PD0001"));
        ProductDao dao = new ProductDao();
        List<Product> list = dao.pagingProduct(4);
        for (Product p : list
        ) {
            System.out.println(p);
        }
        System.out.println(list.size());
    }
}
