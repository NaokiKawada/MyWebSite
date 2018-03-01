package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {
    private static String url = "jdbc:mysql://localhost/ec_uniform";
    private static String user = "root";
    private static String pass = "password";

    /**
     * DBへ接続するコネクションを返す
     */
    public static Connection getConnection() {
    	System.out.println("uniform connect");

        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return con;
    }
}

