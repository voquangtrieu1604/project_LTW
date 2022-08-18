package edu.hcmuaf.edu.fit.project_ltw.dao;

import edu.hcmuaf.edu.fit.project_ltw.beans.Address;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.controller.account.AccountAddress;
import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;
import org.jdbi.v3.core.mapper.reflect.ConstructorMapper;

public class AddressDao {

    private static AddressDao instance;

    public static AddressDao getInstance() {
        if (instance == null)
            instance = new AddressDao();
        return instance;
    }

    public Address getAddressById(String id) {
        try {
            Address re = DbConnector.get().withHandle(h -> h.createQuery("select * from address_order where user_id= :id_user")
                    .bind("id_user", id)
                    .registerRowMapper(ConstructorMapper.factory(Address.class))
                    .mapToBean(Address.class)
                    .one());

            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }

    public void updateAddress(String id_user, String surname, String newname, String phone, String duong, String tinh, String huyen, String xa, String zip) {

        try {
            DbConnector.get().withHandle(h -> h.createUpdate("UPDATE address_order SET surname= :surname, name= :name, street= :street, province= :province, district= :district, ward= :ward, postal_id= :postal_id   WHERE  user_id= :id_user")
                    .bind("surname", surname)
                    .bind("name", newname)
                    .bind("phone", phone)
                    .bind("street", duong)
                    .bind("province", tinh)
                    .bind("district", huyen)
                    .bind("ward", xa)
                    .bind("postal_id", zip)
                    .bind("id_user", id_user).execute());
        } catch (Exception exception) {
            System.out.println(exception);


        }
    }

    public static void main(String[] args) {
        getInstance().updateAddress("UA0009","nguyen","hau","0824831869","addf","dksaf","kdfsa","kasf","ksdfsk");
    }
}
