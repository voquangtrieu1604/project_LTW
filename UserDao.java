package edu.hcmuaf.edu.fit.project_ltw;

import edu.hcmuaf.edu.fit.project_ltw.function.Login;
import edu.hcmuaf.edu.fit.project_ltw.function.UserAccount;


public class UserDao {
    public UserAccount checkLogin(String gmail, String password) {
        UserAccount user = Login.login(gmail, password);

        if (user == null || !user.getGmail().equals(gmail)) return null;
        return user;
    }
}
