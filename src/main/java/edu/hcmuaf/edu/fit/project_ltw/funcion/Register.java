package edu.hcmuaf.edu.fit.project_ltw.funcion;

import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Register {

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

    public static String nextID(Connection con, String table_name, String id_template, String symbolID) throws SQLException {
        String sql = "SELECT " + id_template + " FROM " + table_name;
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        List<Integer> id_list = new ArrayList<Integer>();
        String lastId = null;
        System.out.println("run nextid");
        while (rs.next()) {
            lastId = rs.getString(1);
            id_list.add(Integer.parseInt(rs.getString(1).substring(2)));
            System.out.println(id_list.get(id_list.size() - 1));
        }

//        int number = Integer.parseInt(lastId.substring(2))+1;
        int number = getMax(id_list) + 1;
        System.out.println("max id: " + number
        );
        String newID = symbolID + String.format("%04d", number);
        rs.close();
        return newID;
    }

    public static void registerAutoID_user(String username, String email, String password) {
        try {
            Connection con = DbConnector.getCon();
            String newID = nextID(con, "account", "id_user", "UA");
            String sqladd = "insert into account(id_user,user_name,email,password) values(?,?,?,?)";
            PreparedStatement psAd = con.prepareStatement(sqladd);
            psAd.setString(1, newID);
            psAd.setString(2, username);
            psAd.setString(3, email);
            psAd.setString(4, password);

            int result = psAd.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }


    public static void main(String[] args) {
        registerAutoID_user("trieu", "trieu@gmail.com", "Quangtrieu");
    }
}
