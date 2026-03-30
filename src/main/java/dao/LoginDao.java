package dao;

import com.mysql.cj.protocol.Resultset;
import util.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao  {




    public Boolean accessQuery(String uname,String pass) throws SQLException, ClassNotFoundException {
            Database db=new Database();
            Connection con= db.getConnect();
            Boolean access =false;
            String query="select * from users where name=? and password=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1, uname);
            ps.setString(2, pass);

            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                return true;
            }
            return access;

    }




}
