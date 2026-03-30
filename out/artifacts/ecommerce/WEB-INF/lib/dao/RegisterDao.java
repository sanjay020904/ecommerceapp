package dao;

import util.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDao {

    public Boolean registerQuery(String uname,String pass,String email) throws SQLException, ClassNotFoundException {
        Database db=new Database();
        Connection con= db.getConnect();
        Boolean access =false;
        String query="insert into users(name,email,password) values(?,?,?) ";
        PreparedStatement ps=con.prepareStatement(query);

        ps.setString(1, uname);
        ps.setString(2, email);
        ps.setString(3, pass);


        int count=ps.executeUpdate();
        if(count>0)
        {
            return true;
        }
        return access;

    }

}
