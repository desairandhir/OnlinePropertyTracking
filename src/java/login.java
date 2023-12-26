/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 */
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
              PrintWriter out=resp.getWriter();
        String username=req.getParameter("txt1");
        String password=req.getParameter("txt2");
        
        String event=req.getParameter("btn1");
        
        out.println(username);
        out.println(password);

        Database db=new Database();
        String result=db.connectdb();
        out.println(result);
                
        
         if (event.equals("LogIn"))
      {
          try
 {
     Connection cn=null;
 Statement st=null;
     
 Class.forName("com.mysql.jdbc.Driver");
 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_tracking?autoReconnect=true&useSSL=false","root","root");
 st=cn.createStatement();
 String sql="select * from user_mst where username='"+username.toString()+"' and pass_word='"+password.toString()+"'";
 ResultSet rs=st.executeQuery(sql);
 if(rs.next())
 {
     HttpSession session=req.getSession();
     session.setAttribute("userid", rs.getString("uid"));
     session.setAttribute("fname", rs.getString("fname"));
     session.setAttribute("lname", rs.getString("lname"));
     session.setAttribute("address", rs.getString("address"));
     session.setAttribute("contact_no", rs.getString("contact_no"));
     session.setAttribute("email", rs.getString("email"));
     resp.sendRedirect("post.jsp");
 }
 else
 {
 resp.setContentType("text/html");   
             out.println("<script type=\"text/javascript\">");
             out.println("alert('UserName Password Not Match');");
             out.println("location='login.jsp';");
             out.println("</script>");
 
 
 }
 }catch(Exception ex)
 {
 out.println(ex.toString());
 }
         
      }
         else
         {
         resp.sendRedirect("signup.jsp");
         }
         
  
    }


}