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
        for (User user : list) {
            if (user.getUser_name().equals(userName) && user.getPassword().equals(password)) {
                return user;
            }

        }
        return null;
    }


    public User checkLoginGoogle(String id, String email) {
        List<User> list = UserDao.getInstance().getListUser();
        for (User user : list) {
            if (user.getId_user().equals(id) && user.getEmail().equals(email)) {
                return user;
            }
        }
        return null;
    }

    public User checkGmailGoogle(String email) {
        List<User> list = UserDao.getInstance().getListUser();
        for (User user : list) {
            if (user.getEmail().equals(email)) {
                return user;
            }
        }
        return null;
    }

    public void updateUserInfor(String idUser, String userName, String email, String phone) {
        UserDao.getInstance().updateAccountInFor(idUser, userName, email, phone);

    }

    public User checkAccountRegister(String username, String email) {
        List<User> list = UserDao.getInstance().getListUser();
        for (User user : list) {
            if (user.getEmail().equals(email) || user.getUser_name().equals(username)) {
                return user;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(UserService.getInstance().checkGmailGoogle("byztrieu@gmail.com"));
    }
}
