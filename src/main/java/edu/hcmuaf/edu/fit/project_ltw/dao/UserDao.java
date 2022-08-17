package edu.hcmuaf.edu.fit.project_ltw.dao;


import edu.hcmuaf.edu.fit.project_ltw.beans.Product;
import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;
import edu.hcmuaf.edu.fit.project_ltw.beans.Account;
import edu.hcmuaf.edu.fit.project_ltw.beans.Login;
import org.jdbi.v3.core.mapper.reflect.ConstructorMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;


public class UserDao {
    private static UserDao instance;

    public static UserDao getInstance() {
        if (instance == null)
            instance = new UserDao();
        return instance;
    }

    public List<User> getListUser() {
        try {
            List<User> re = DbConnector.get().withHandle(h -> h.createQuery("select * from account")
                    .mapToBean(User.class)
                    .stream().collect(Collectors.toList()));
            System.out.println(re.size());
            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }

    public void updateAccountInFor(String id_user, String userName, String email, String phone) {

        try {
            DbConnector.get().withHandle(h -> h.createUpdate("UPDATE account SET user_name= :user_name, email= :email, phone= :phone WHERE  id_user= :id_user")
                    .bind("user_name", userName)
                    .bind("email", email)
                    .bind("phone", phone)
                    .bind("id_user", id_user).execute());
        } catch (Exception exception) {
            System.out.println(exception);


        }
    }


    public Account checkLogin(String username, String password) {
        Account user = Login.login(username, password);
        if (user == null || !user.getUsername().equals(username)) return null;
        return user;
    }

    public User getUserById(String id) {
        try {
            User re = DbConnector.get().withHandle(h -> h.createQuery("select * from account where id_user= :id_user")
                    .bind("id_user", id)
                    .registerRowMapper(ConstructorMapper.factory(User.class))
                    .mapToBean(User.class)
                    .one());

            return re;
        } catch (Exception exception) {
            System.out.println(exception);
            return null;

        }
    }


    public static void main(String[] args) {
        System.out.println(getInstance().getUserById("UA0001"));
    }
}
