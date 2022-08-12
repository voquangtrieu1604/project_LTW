package edu.hcmuaf.edu.fit.project_ltw.services;

import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.dao.ProductDao;
import edu.hcmuaf.edu.fit.project_ltw.dao.WishListDao;

import java.util.ArrayList;
import java.util.List;

public class WishListService {
    private static WishListService instance;

    public static WishListService getInstance() {
        if (instance == null)
            instance = new WishListService();
        return instance;
    }

    public List<Product> getListProductWishListById(String idUser) {
        List<Product> re = new ArrayList<Product>();
        List<String> listIdProduct = WishListDao.getInstance().getListWishListIdById(idUser);
        for (String idP:listIdProduct) {
          re.add(ProductDao.getInstance().getProductById(idP));

        }
        return re;
    }

    public void removeFormWishlist(String idUser, String idProduct) {
       WishListDao.getInstance().removeFavoriteProduct(idUser,idProduct);
    }

    public void addIntoWishlist(String idUser, String idProduct,int idWishlist) {
        WishListDao.getInstance().insertFavoriteProduct(idUser,idProduct,idWishlist);
    }

    public static void main(String[] args) {
        System.out.println(WishListService.getInstance().getListProductWishListById("UA0010"));
    }
}
