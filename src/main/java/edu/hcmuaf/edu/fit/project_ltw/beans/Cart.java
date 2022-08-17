package edu.hcmuaf.edu.fit.project_ltw.beans;

import edu.hcmuaf.edu.fit.project_ltw.dao.CartDao;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    private static  final  long serialVersionUID = 1L;
    private final Map<String,Product> productList;

    private double feeShip;

    private double feePromotion;

    private String iduser;

    public Cart() {
        this.productList = new HashMap<>();
    }

    public Cart(String iduser){
        this.productList = CartDao.getInstance().getCart(iduser);
        this.iduser = iduser;

    }

    public Cart(Cart cart){
        this.productList = cart.getCart();
    }

    public static  Cart getInstance(){
        return new Cart();
    }



    public void  put(Product product){
        String key = product.getId_product()+product.getSize()+product.getColor();
        if (productList.containsKey(key)){
            productList.get(key).upOneQuantitySold();
        }
        else {
            productList.put(key,product);
            productList.get(key).upOneQuantitySold();
        }


    }

    public Map<String,Product> getCart(){
        return this.productList;
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

    public double getFinalMoneyCart(){
        return getTotalMoneyCart() + getFeeShip() - (((getTotalMoneyCart()+getFeeShip())*getFeePromotion())/100);
    }

    public int getNumberProductInCart(){
        int result = 0;
        for (Product product: productList.values()){
            result += product.getQuantitySold();
        }
        return result;
    }

    public Collection<Product> getProductList(){
        return  productList.values();
    }

    public double getFeeShip(){
        if (getTotalMoneyCart()>=2000000){
            return 0;
        }
        else {
            return 22000*getNumberProductInCart();
        }

    }

    public int getFeePromotion(){
        if (getNumberProductInCart()>=3){
           return getNumberProductInCart()/3;
        }
        else {
            return 0;

        }

    }



//    public static void main(String[] args) {
//        System.out.println(getInstance().getFinalMoneyCart());
//    }





}
