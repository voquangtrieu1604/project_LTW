package edu.hcmuaf.edu.fit.project_ltw.funcion;

import edu.hcmuaf.edu.fit.project_ltw.db.DbConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Contact {
    public static void addContact(String email, String name, String phone, String content) {
        try {
            Connection con = DbConnector.getCon();
            String nextID = Register.nextID(con, "contact", "id_contact", "CT");
            String sql = "insert into contact values (?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nextID);
            ps.setString(2, email);
            ps.setString(3, name);
            ps.setString(4, phone);
            ps.setString(5, content);
            int clar = ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
