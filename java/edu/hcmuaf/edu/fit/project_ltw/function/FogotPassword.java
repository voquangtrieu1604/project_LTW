package edu.hcmuaf.edu.fit.project_ltw.function;

import edu.hcmuaf.edu.fit.project_ltw.dao.GetConnection;
import edu.hcmuaf.edu.fit.project_ltw.function.ChangePassword;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

public class FogotPassword {
    public static String fogotPasswor(String gmail) {
        try {
            Connection connection = GetConnection.getCon();
            String sql = "select id_user form UserAccount where gmail = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(3, gmail);
            ResultSet rs = ps.executeQuery();
            int count = 0;
            String id = null;
            while (rs.next()) {
                id = rs.getString(2);
                count++;
            }
            if (count == 1)
                return id;
            else {
                return null;
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean generateAndChangeOldPass(String id) {
        Random r = new Random();
        String Pass = "001";
        StringBuilder sb = new StringBuilder(Pass);
        for (int i = 0; i < r.nextInt(1000); i++) {
            char c = (char) (r.nextInt(26) + 'a');
            sb.setCharAt(r.nextInt(sb.length()), c);
        }
        return ChangePassword.changePassById(id, new String(sb));

    }
}
