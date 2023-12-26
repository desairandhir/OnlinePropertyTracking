import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


public class Database {
     Connection cn=null;
    Statement st=null;
    
    String connectdb()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_tracking?autoReconnect=true&useSSL=false","root","root");
            return ("database Connected");
            
        }
        catch(Exception ex)
        {
            return (ex.toString());
        }
    }
    
    
    String Insert(String sql)
    {
        try
        {
            st=cn.createStatement();
            st.executeUpdate(sql);
            return ("Record Inserted");
            
        }
        catch(Exception ex)
        {
            return (ex.toString());
        }
    }
    
     String Delete(String sql)
    {
        try
        {
            st=cn.createStatement();
            st.executeUpdate(sql);
            return ("Record Deleted");
            
        }
        catch(Exception ex)
        {
            return (ex.toString());
        }
    }
     
     String Update(String sql)
    {
        try
        {
            st=cn.createStatement();
            st.executeUpdate(sql);
            return ("Record Updated");
            
        }
        catch(Exception ex)
        {
            return (ex.toString());
        }
    }

    String Search(String sql)
    {
        try
        {
            st=cn.createStatement();
            st.executeUpdate(sql);
            return ("Record Updated");
            
        }
        catch(Exception ex)
        {
            return (ex.toString());
        }
    }

    
    
  
    
}