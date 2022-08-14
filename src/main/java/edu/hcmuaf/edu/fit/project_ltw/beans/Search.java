package edu.hcmuaf.edu.fit.project_ltw.beans;

import edu.hcmuaf.edu.fit.project_ltw.beans.Account;
import edu.hcmuaf.edu.fit.project_ltw.beans.Blog;
import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.dao.Bill;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;
import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Search {

    public static List<Product> searchByName(String name){
        return ProductDao.getInstance().searchByName(name);
    }
    public static Account searchUserById(String id_user){
        try {
            Connection con = DbConnector.getCon();
            List<Account> accounts = new ArrayList<Account>();
            String sql = "SELECT * FROM user_account WHERE id_user=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,id_user);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                Account account = new Account(rs.getString(1),rs.getString(2),rs.getString(3));
                accounts.add(account);
            }
            rs.close();
            ps.close();
            return (accounts.size()==0?null:accounts.get(0));
        } catch (SQLException e) {
            //some error when execute query
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            //can't find the name to get COnnection down database
            e.printStackTrace();
        }
        return null;
    }
    public static List<Blog> searchBlogByNumber(int number){
        try {
            Connection con =DbConnector.getCon();
            List<Blog> blogs = new ArrayList<Blog>();
            String sql = "select * from blog order by date_post desc limit ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,number);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Blog blog = new Blog(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getDate(6),rs.getString(7));
                blogs.add(blog);
            }
            rs.close();
            ps.close();
            return blogs;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
    public static Product searchProductById(String id){
       return ProductDao.getInstance().getProductById(id);
    }
    public static List<Bill> bills(String id_user){
        try{
            Connection con = DbConnector.getCon();
            String sql = "select * from bill where id_user = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,id_user);
            ResultSet rs = ps.executeQuery();
            List<Bill> bills = new ArrayList<Bill>();
            while(rs.next()){
                Bill bill = new Bill();
                bill.setId_bill(rs.getString("id_bill"));
                bill.setId_user(rs.getString("id_user"));
                bill.setAddress(rs.getString("address"));
                bill.setPhone_number(rs.getString("phone_number"));
                bill.setState(rs.getString("state"));
                bill.setTotal_money(rs.getDouble("total_money"));
                bill.setDate_time(rs.getDate("date_time"));
                bills.add(bill);
            }
            rs.close();
            ps.close();
            return bills;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
    public static void main(String[] args) {
        List<Product> products = searchByName("bắp");
//        UserAccount account = searchUserById("UA0001");
//        System.out.println(account.toString());
//        List<Blog> blogs= searchBlogByNumber(2);
//        for (Blog b:blogs
//             ) {
//            System.out.println(b.toString());
//        }

//        Product ps = searchProductById("PD0005");
//        System.out.println(ps.toString());
        System.out.println(products.size());
        for (Product p:products
        ) {
            System.out.println(p.toString());
        }
    }
}
