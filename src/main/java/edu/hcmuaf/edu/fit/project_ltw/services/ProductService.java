package edu.hcmuaf.edu.fit.project_ltw.services;

import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;

import java.util.List;

public class ProductService {
    private static ProductService instance;

    public static ProductService getInstance() {
        if (instance == null)
            instance = new ProductService();
        return instance;
    }

    public List<Product> listProduct(){
        return ProductDao.getInstance().getListProduct();
    }


}
