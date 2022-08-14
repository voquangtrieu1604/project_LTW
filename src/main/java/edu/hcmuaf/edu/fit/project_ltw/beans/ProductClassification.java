package edu.hcmuaf.edu.fit.project_ltw.beans;

import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;
import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class ProductClassification {
    public static List<Product> productForSale(int limit){
    return ProductDao.getInstance().productForSale(limit);
    }
    public static List<Product> productHot(int limit){

        return ProductDao.getInstance().productHot(limit);
    }
    public static List<Product> productTypeTraiCayKhuyenMai(int limit){
        return ProductDao.productTypeTraiCayKhuyenMai(limit);
    }

    public static List<Product> productTypeTraiCayHot(int limit){
       return ProductDao.productTypeTraiCayHot(limit);
    }
    public static List<Product> productTypeRauCuKhuyenMai(int limit){
       return ProductDao.getInstance().productTypeRauCuKhuyenMai(limit);
    }
    public static List<Product> productTypeRauCuHot(int limit){
        return  ProductDao.getInstance().productTypeRauCuHot(limit);
    }

    public static List<Product> orderByPriceIncrease(List<Product> products){
        List<Product> sortedProducts = new ArrayList<>(products);
        sortedProducts.sort(new Comparator<Product>() {
            @Override
            public int compare(Product o1, Product o2) {
                if(o1.getPrice()>o2.getPrice())
                    return 1;
                else if(o1.getPrice()<o2.getPrice()) return -1;
                else return 0;
            }
        });
        return sortedProducts;
    }
    public static List<Product> orderByPriceDecrease(List<Product> products){
        List<Product> sortedProducts = new ArrayList<>(products);
        sortedProducts.sort(new Comparator<Product>() {
            @Override
            public int compare(Product o1, Product o2) {
                return -Double.compare(o1.getPrice(),o2.getPrice());
            }
        });
        return sortedProducts;
    }
    public static List<Product> productTypeClassification(List<Product> products,String type){
        List<Product> sortedProducts = new ArrayList<>(products);
        for(int i =0 ;i<sortedProducts.size();i++){
            if(!sortedProducts.get(i).getProduct_type().equalsIgnoreCase(type)){
//                System.out.println(sortedProducts.get(i).getId_product()+" removed"+" at i: "+i);
                sortedProducts.remove(i); i--;}

        }
        return sortedProducts;
    }
    public static void main(String[] args) {
        System.out.println("---sale product");
        List<Product> list = productForSale(10);
        list.sort(new Comparator<Product>() {
            @Override
            public int compare(Product o1, Product o2) {
                return -Integer.compare(o1.getPercent_discount(),o2.getPercent_discount());
            }
        });
//        List<Product> list = productTypeTraiCay();
//        List<Product> list = productTypeRauCu();
//        List<Product> list = productHot();


        for (Product p:list
        ) {
            System.out.println(p.getId_product()+", "+p.getPrice()+", "+p.getProduct_type()+" percentdiscount:  "+p.getPercent_discount()+" name: "+p.getProduct_name());
        }
//        System.out.println("---after second classification");
////        List<Product> sortedList = orderByPriceIncrease(list);
////       List<Product> sortedList = orderByPriceDecrease(list);
//        List<Product> sortedList = productTypeClassification(list,"Rau củ");
//        for (Product p:sortedList
//             ) {
//            System.out.println(p.getId_product()+", "+p.getPrice()+", "+p.getProduct_type());
//        }
////        System.out.println("---hot product");
//        productHot();
    }
}
