package edu.hcmuaf.edu.fit.project_ltw.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import static edu.hcmuaf.edu.fit.project_ltw.properties.DBProperties.*;

public class DbConnector {
    private static Jdbi jdbi;
    private static DbConnector getConnection;
    private static Connection con;

    public static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://localhost:3306/raucuqua");
        dataSource.setUser(getUsername());
        dataSource.setPassword(getPassword());
        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            throw new RuntimeException(throwables);
        }
        jdbi = Jdbi.create(dataSource);
    }

    public static Jdbi get() {
        if (jdbi == null) {
            makeConnect();
        }
        return jdbi;
    }

    public DbConnector() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/owen";
        String username = "root";
        String password = "";
        con = DriverManager.getConnection(url, username, password);
    }

    public static Connection connect() throws Exception {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/raucuqua";
            String username = "root";
            String password = "";
            Connection connect = DriverManager.getConnection(url, username, password);
            return connect;

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }


    public void ThucThiSql(String sql) throws Exception {
        Connection connect = connect();
        Statement stmt = connect.createStatement();
        stmt.executeUpdate(sql);
    }

    public static DbConnector getInstance() throws SQLException, ClassNotFoundException {
        if (getConnection == null)
            getConnection = new DbConnector();
        return getConnection;
    }

    public static Connection getCon() throws SQLException, ClassNotFoundException {
        getInstance();
        return con;
    }
}
