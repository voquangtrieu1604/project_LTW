package edu.hcmuaf.edu.fit.project_ltw.beans;

import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    private static  final  long serialVersionUID = 1L;
    private final Map<String,Product> productList;


    public Cart() {
        this.productList = new HashMap<>();
        Product p = ProductDao.getInstance().getProductById("PD0001");
        productList.put(p.getId_product(),p);
    }

    public static  Cart getInstance(){
        return new Cart();
    }

    public void  put(Product product){
        productList.put(product.getId_product(),product);
    }

    public Product getProduct(String id){
        return productList.get(id);
    }

    public Product remove(String id){
        return  productList.remove(id);
    }

    public double getTotalMoneyCart(){
        double totalPirce = 0;
        for (Product product: productList.values()){
            totalPirce += product.totalPriceSold();
        }
        return totalPirce;
    }

    public Collection<Product> getProductList(){
        return  productList.values();
    }

    public static void main(String[] args) {
        Collection<Product> list = getInstance().getProductList();
        for (Product p: list) {
            System.out.println(p.getId_product());
        }
    }




}
