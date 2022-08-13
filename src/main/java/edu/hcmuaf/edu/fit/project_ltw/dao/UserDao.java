package edu.hcmuaf.edu.fit.project_ltw.dao;


import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;
import edu.hcmuaf.edu.fit.project_ltw.funcion.Account;
import edu.hcmuaf.edu.fit.project_ltw.funcion.Login;

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
            List<User> re = DbConnector.get().withHandle(h -> h.createQuery("select * from user_account")
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
            DbConnector.get().withHandle(h -> h.createUpdate("UPDATE user_account SET user_name= :user_name, email= :email, phone= :phone WHERE  id_user= :id_user")
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


    public static void main(String[] args) {
        getInstance().updateAccountInFor("UA0009", "hauupdate", "hauupdae@gmail.com", "0824831867");
    }


}
