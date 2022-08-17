package edu.hcmuaf.edu.fit.project_ltw.beans;

public class CartItem {
    private String id_user;
    private String product_id;
    private String color;
    private String size;

    private int c_amount_bought;

    public CartItem(){

    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getC_amount_bought() {
        return c_amount_bought;
    }

    public void setC_amount_bought(int c_amount_bought) {
        this.c_amount_bought = c_amount_bought;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "id_user='" + id_user + '\'' +
                ", product_id='" + product_id + '\'' +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", c_amount_bought='" + c_amount_bought + '\'' +
                '}';
    }
}
