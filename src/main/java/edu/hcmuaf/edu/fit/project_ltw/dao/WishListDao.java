package edu.hcmuaf.edu.fit.project_ltw.dao;

import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;

import java.util.List;

public class WishListDao {
    private static WishListDao instance;

    public static WishListDao getInstance() {
        if (instance == null)
            instance = new WishListDao();
        return instance;
    }

    public List<String> getListWishListIdById(String id) {
        try {
            List<String> re = DbConnector.get().withHandle(h -> h.createQuery("select product_id from wishlist where user_id= :user_id")
                    .bind("user_id", id)
                    .mapTo(String.class)
                    .list());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }

    public int getNumberid(String id) {
        try {
            List<Integer> re = DbConnector.get().withHandle(h -> h.createQuery("select MAX(wishlist_id) from wishlist where user_id= :user_id")
                    .bind("user_id", id)
                    .mapTo(Integer.class)
                    .list());
            if (re.size()==0){
                return 0;
            }
            else {
                return re.get(0);
            }
        } catch (Exception exception) {
            System.out.println(exception);
            return 0;

        }
    }


    public void removeFavoriteProduct(String idUser, String idProduct) {

        try {
            DbConnector.get().withHandle(h -> h.createUpdate("DELETE FROM wishlist WHERE product_id= :product_id AND user_id= :user_id")
                    .bind("product_id", idProduct)
                    .bind("user_id", idUser).execute());
        } catch (Exception exception) {
            System.out.println(exception);


        }
    }

    public void insertFavoriteProduct(String idUser, String idProduct,int idWishlist) {

        try {
            DbConnector.get().withHandle(h -> h.createUpdate("insert into wishlist (user_id, wishlist_id, product_id) values (:user_id, :wishlist_id, :product_id)")
                    .bind("user_id", idUser)
                    .bind("wishlist_id", idWishlist)
                    .bind("product_id", idProduct).execute());
        } catch (Exception exception) {
            System.out.println(exception);


        }
    }

    public static void main(String[] args) {
        System.out.println(getInstance().getNumberid("UA0010"));
    }

}
