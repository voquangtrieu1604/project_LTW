package edu.hcmuaf.edu.fit.project_ltw.beans;

import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DangKy {

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
//            String newID = nextID(con, "account", "id_user", "UA");
            String sqladd = "insert into account(id_user,user_name,email,password) values(?,?,?,?)";
            PreparedStatement psAd = con.prepareStatement(sqladd);
            psAd.setString(1, username);
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

    public static void registerAccountGoogle(String id, String username, String email) {
        try {
            Connection con = DbConnector.getCon();
            String sql = "insert into account(id_user,user_name,email,password) values(?,?,?,'')";
            PreparedStatement psAd = con.prepareStatement(sql);
            psAd.setString(1, id);
            psAd.setString(2, username);
            psAd.setString(3, email);
            int result = psAd.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static String convertByteToHex(byte[] data) {
        BigInteger number = new BigInteger(1, data);
        String hashtext = number.toString(16);
        // Now we need to zero pad it if you actually want the full 32 chars.
        while (hashtext.length() < 32) {
            hashtext = "0" + hashtext;
        }
        return hashtext;
    }

    public static String getMD5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            return convertByteToHex(messageDigest);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }


    public static void main(String[] args) {
//        registerAutoID_user("trieu", "trieu@gmail.com", "Quangtrieu");

        System.out.println(getMD5("Quangtrieu"));
    }
}
