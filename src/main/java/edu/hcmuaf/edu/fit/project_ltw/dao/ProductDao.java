package edu.hcmuaf.edu.fit.project_ltw.dao;


import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;
import org.jdbi.v3.core.mapper.reflect.ConstructorMapper;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDao {
    private static ProductDao instance;

    public static ProductDao getInstance() {
        if (instance == null)
            instance = new ProductDao();
        return instance;
    }

    public List<Product> getListProduct(){
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

    public Product getProductById(String id){
        try {
            Product re =  DbConnector.get().withHandle(h -> h.createQuery("select * from product where id_product= :id_product")
                    .bind("id_product",id)
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
       System.out.println( getInstance().getProductById("PD0001"));
    }
}
