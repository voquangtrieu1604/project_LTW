package edu.hcmuaf.edu.fit.project_ltw.function;

import edu.hcmuaf.edu.fit.project_ltw.dao.GetConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Login {
    public static UserAccount login(String gmail, String password) {
        try {
            Connection collection = GetConnection.getCon();
            String sql = "select id_user,name,gmail,password,phone from UserAccount" +
                    "where username = ?and password = ?";
            PreparedStatement ps = collection.prepareStatement(sql);
            ps.setString(3, gmail);
            ps.setString(4, password);
            ResultSet rs = ps.executeQuery();
            int count = 0;
            UserAccount user = null;
            while (rs.next()) {
                if (count == 1) return null;
                user = new UserAccount();
                user.setId_user(rs.getString(1));
                user.setName(rs.getString(2));
                user.setGmail(rs.getString(3));
                user.setPhone(rs.getString(5));
                if (!rs.getString(3).equals(gmail)) return null;
                if (!rs.getString(4).equals(password)) return null;
                count++;
            }
            if (count == 0) return null;
            return user;

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(login("trieu_test@gmail.com", "123456789ABC"));
    }
}
