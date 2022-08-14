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

    public List<Product> getListProduct() {
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

    public List<Product> getListProductTop9() {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from product limit 9")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }


//    public List<Product> pagingProduct(int index) {
//        List<Product> list = new ArrayList<>();
//        String query = "select * from product order by id_product limit ?,9";
//        try {
//            Connection conn = new DbConnector().connect();
//            PreparedStatement ps = conn.prepareStatement(query);
//            ps.setInt(1, (index - 1) * 9);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1), rs.getString(2),
//                        rs.getString(3), rs.getInt(4), rs.getInt(5),
//                        rs.getInt(6), rs.getDouble(7), rs.getString(8),
//                        rs.getString(9), rs.getString(10)));
//            }
//        } catch (Exception e) {
//            return null;
//        }
//        return list;
//
//    }

    public List<Product> pagingProduct(int index) {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from product order by id_product limit :amount,9")
                    .bind("amount",(index-1)*9)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }


//    public List<Product> pagingProductSale(int index) {
//        List<Product> list = new ArrayList<>();
//            String query = "select * from product WHERE percent_discount not like 0 order by id_product limit ?,9 ";
//        try {
//            Connection conn = new DbConnector().connect();
//            PreparedStatement ps = conn.prepareStatement(query);
//            ps.setInt(1, (index - 1) * 9);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1), rs.getString(2),
//                        rs.getString(3), rs.getInt(4), rs.getInt(5),
//                        rs.getInt(6), rs.getDouble(7), rs.getString(8),
//                        rs.getString(9), rs.getString(10)));
//            }
//        } catch (Exception e) {
//            return null;
//        }
//        return list;
//
//    }

    public List<Product> pagingProductSale(int index) {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from product WHERE percent_discount not like 0 order by id_product limit :amount,9 ")
                    .bind("amount",(index-1)*9)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }


    }

//    public int getTotalProduct() {
//        String query = "select count(*) from product";
//        try {
//            Connection conn = new DbConnector().connect();
//            PreparedStatement ps = conn.prepareStatement(query);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                return rs.getInt(1);
//            }
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//        return 0;
//    }

    public int getTotalProduct() {
        try {
            Integer re = DbConnector.get().withHandle(h -> h.createQuery("select count(*) from product")
                    .mapTo(Integer.class)
                    .one());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return 0;

        }

    }



//    public int getTotalProductSale() {
//        String query = "SELECT count(*) FROM `product` WHERE percent_discount NOT LIKE 0 ";
//        try {
//            Connection conn = new DbConnector().connect();
//            PreparedStatement ps = conn.prepareStatement(query);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                return rs.getInt(1);
//            }
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//        return 0;
//    }

    public int getTotalProductSale() {
        try {
            Integer re = DbConnector.get().withHandle(h -> h.createQuery("SELECT count(*) FROM `product` WHERE percent_discount NOT LIKE 0 ")
                    .mapTo(Integer.class)
                    .one());
                return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return 0;

        }

    }


    public Product getProductById(String id) {
        try {
            Product re = DbConnector.get().withHandle(h -> h.createQuery("select * from product where id_product= :id_product")
                    .bind("id_product", id)
                    .registerRowMapper(ConstructorMapper.factory(Product.class))
                    .mapToBean(Product.class)
                    .one());

            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }

    // get product by id and quatity
    public List<Product> searchProductByTypeAndQuantity(String type, int quantity) {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from product where product_type = :type limit :quan")
                    .bind("type",type)
                    .bind("quan",quantity)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }

    public List<Product> productForSale(int limit) {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from Product where percent_discount>0 limit :limit")
                    .bind("limit",limit)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }

    public static List<Product> productHot(int limit){
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from Product where amount_bought > amount_imported/2 limit :limit")
                    .bind("limit",limit)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }

    }

    public static List<Product> productTypeTraiCayKhuyenMai(int limit){
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from Product where product_type= :product_type and percent_discount>0 limit :litmit")
                    .bind("product_type","trái cây")
                    .bind("limit",limit)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }

    }

    public static List<Product> productTypeTraiCayHot(int limit){
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from Product where product_type= :product_type and amount_bought > amount_imported/2 limit :limit")
                    .bind("product_type","trái cây")
                    .bind("limit",limit)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }

    }

    public static List<Product> productTypeRauCuKhuyenMai(int limit){
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from Product where product_type= :product_type and percent_discount>0 limit :limit")
                    .bind("product_type","rau củ")
                    .bind("limit",limit)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }

    }

    public static List<Product> productTypeRauCuHot(int limit){
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select * from Product where product_type= :product_type and amount_bought > amount_imported/2 limit :limit")
                    .bind("product_type","rau củ")
                    .bind("limit",limit)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }


    }

    public static List<Product> searchByName(String name){
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("SELECT * FROM product WHERE product_name LIKE ?")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }





    public static void main(String[] args) {
        System.out.println(getInstance().pagingProductSale(1));

    }
}
