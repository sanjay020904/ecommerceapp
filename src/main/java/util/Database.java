package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public  class Database {

    public static Connection getConnect() throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.cj.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/abc";

        String user="root";
        String pass="1234";
        return DriverManager.getConnection(url,user,pass);
    }
}
