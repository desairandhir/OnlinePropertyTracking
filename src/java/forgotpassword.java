/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 */
public class forgotpassword extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
     PrintWriter out=resp.getWriter();
      String emailid=req.getParameter("txt1"); 
      String cno=req.getParameter("txt2"); 
      String password=req.getParameter("txt3"); 
      String cpassword=req.getParameter("txt4"); 
       
      String event=req.getParameter("btn1");
      
      out.println(emailid);
      out.println(cno);
      out.println(password);
      out.println(cpassword);
      
      
      Database db=new Database();
      String result=db.connectdb();
      out.println(result);
      
      
       if (event.equals("Back"))
      {
         resp.sendRedirect("login.jsp");
      }
       
        if(event.equals("Reset Password"))
        {
            if(password.equals(cpassword))
        
            {
            
            String update=db.Update("update user_mst set pass_word='"+password.toString()+"' where contact_no='"+cno.toString()+"' ");
            out.println(update);
            }
            else
            {
            out.println("Password Not Match");
            }
        }
    }
    
}

   