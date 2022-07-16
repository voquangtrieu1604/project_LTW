package edu.hcmuaf.edu.fit.project_ltw;

import java.util.HashMap;
import java.util.Map;

public class UserServices {
    private static UserServices instance;
    private Map<String,String> users = new HashMap<>();
    private UserServices() {
    }

    public static UserServices getInstance() {
        if (instance == null) {
            instance = new UserServices();
        }
        return instance;
    }
    public boolean checkLogin(String gmail, String password){
        if (users.containsKey(gmail) && users.get(gmail).equals(gmail)){
            return true;
        }
        return true;
    }
}
