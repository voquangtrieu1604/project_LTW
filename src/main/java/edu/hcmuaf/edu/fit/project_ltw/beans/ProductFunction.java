package edu.hcmuaf.edu.fit.project_ltw.beans;

import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ProductFunction {

    public static Product searchProductById(String id) {
        try {
            Connection con = DbConnector.getCon();
            String sql = "select * from product where id_product = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            Product product = new Product();
            while (rs.next()) {
                product = new Product(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4), rs.getInt(5),
                        rs.getInt(6), rs.getDouble(7), rs.getString(8),
                        rs.getString(9), rs.getString(10));
            }
            rs.close();
            ps.close();
            return product;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static int[] returnNumberStar(HashMap<String, IComment> comments) {
        int[] numberstars = new int[5];
        for (IComment i : comments.values()
        ) {
            CommentProduct p = (CommentProduct) i;
            numberstars[p.getNum_star() - 1]++;
        }
        return numberstars;
    }

    public static List<Product> searchProductByTypeAndQuantity(String type, int quantity) {
        List<Product> products = new ArrayList<Product>();
        try {
            Connection con = DbConnector.getCon();
            String sql = "select * from product where product_type = ? limit ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, type);
            ps.setInt(2, quantity);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId_product(rs.getString(1));
                p.setProduct_name(rs.getString(2));
                p.setProduct_type(rs.getString(3));
                p.setAmount_bought(rs.getInt(4));
                p.setAmount_imported(rs.getInt(5));
                p.setPercent_discount(rs.getInt(6));
                p.setPrice(rs.getDouble(7));
                p.setshort_discription(rs.getString(8));
                p.setdiscription(rs.getString(9));
                p.setImg_url(rs.getString(10));
                products.add(p);
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        System.out.println("size: " + products.size());
        return products;
    }

    public static void main(String[] args) {

        for (Product p : searchProductByTypeAndQuantity("rau củ", 5)

        ) {
            System.out.println(p.toString());
        }
    }
}
