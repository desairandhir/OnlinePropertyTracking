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
public class feedback extends HttpServlet  
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     PrintWriter out=resp.getWriter();
     String uname=req.getParameter("txt1");  
     String email=req.getParameter("txt2");
     String subject=req.getParameter("txt3");
     String feedback=req.getParameter("txt4");
     String event=req.getParameter("btn1");
     
     out.println(uname);
     out.println(email);
     out.println(subject);
     out.println(feedback);
    
     
     
     Database db=new Database();
     String result=db.connectdb();
      out.println(result);
      
      if(event.equals("Send"))
      {
         String insert=db.Insert("insert into feedback(uname,email,subject,feedback) values('"+uname.toString()+"','"+email.toString()+"','"+subject.toString()+"','"+feedback.toString()+"')");
         out.println(insert);
          resp.setContentType("text/html");   
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Feedback Send Successfully');");
             out.println("location='home.html';");
             out.println("</script>");
     
      }   
      
    }
    
}

   