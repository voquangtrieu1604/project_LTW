package edu.hcmuaf.edu.fit.project_ltw.function;

import edu.hcmuaf.edu.fit.project_ltw.dao.GetConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Register {
    public static String nextID(Connection connection, String tableName, String idTemplate, String symbolID) throws SQLException {
        String sql = "select" + idTemplate + "from" + tableName;
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        List<Integer> id_list = new ArrayList<Integer>();
        String lastId = null;
        System.out.println("run nextid");
        while (rs.next()) {
            lastId = rs.getString(1);
            id_list.add(Integer.parseInt(rs.getString(1).substring(2)));
            System.out.println(id_list.get(id_list.size() - 1));
        }

        int number = getMax(id_list) + 1;
        System.out.println("max id: " + number
        );
        String newID = symbolID + String.format("%04d", number);
        rs.close();
        return newID;
    }

    public static int getMax(List<Integer> list) {
        if (list == null || list.size() == 0) {
            return 0;
        }
        int max = list.get(0);
        for (Integer i : list
        ) {
            if (max < i) {
                max = i;
            }
        }
        return max;
    }

    public static boolean registerAutoID_user(String name, String gmail, String password, String phone) {
        try {
            Connection connection = GetConnection.getCon();
            String newID = nextID(connection, "UserAccount", "id_user", "UA");
            System.out.println(newID);

            //insert
            String sqladd = "insert into UserAccount(id_user,name, gmail, password,phone) values(?,?,?,?,?)";
            PreparedStatement psAd = connection.prepareStatement(sqladd);
            psAd.setString(1, newID);
            psAd.setString(2, name);
            psAd.setString(3, gmail);
            psAd.setString(4, password);
            psAd.setString(5, phone);
            int result = psAd.executeUpdate();
            if (result == 1)
                return true;
            else
                return false;


        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        registerAutoID_user("Vo Quang Trieu", "trieu_test@gmail.com", "123456789ABC", "0123456789");
    }

}
