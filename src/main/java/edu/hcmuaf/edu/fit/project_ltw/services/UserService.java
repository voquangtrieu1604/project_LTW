package edu.hcmuaf.edu.fit.project_ltw.services;

import edu.hcmuaf.edu.fit.project_ltw.beans.User;
import edu.hcmuaf.edu.fit.project_ltw.dao.UserDao;

import java.util.List;

public class UserService {
    private static UserService instance;

    public static UserService getInstance() {
        if (instance == null)
            instance = new UserService();
        return instance;
    }

    public User checkLogin(String userName, String password) {
        List<User> list = UserDao.getInstance().getListUser();
        for (User user:list) {
            if (user.getUser_name().equals(userName) && user.getPassword().equals(password)){
                return  user;
            }

        }
        return null;
    }

    public void updateUserInfor(String idUser, String userName, String email, String phone){
        UserDao.getInstance().updateAccountInFor(idUser,userName,email,phone);

    }
}
