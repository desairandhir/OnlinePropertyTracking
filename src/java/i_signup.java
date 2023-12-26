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
 * @author Dhiraj
 */
public class i_signup extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String uid=req.getParameter("txt1");
        String fname=req.getParameter("txt2");
        String lname=req.getParameter("txt3");
        String gender=req.getParameter("type");
        String date=req.getParameter("date");
        String address=req.getParameter("txt4");
        String contact=req.getParameter("txt5");
        String mail=req.getParameter("txt9");
        String uname=req.getParameter("txt6");
        String enterpass=req.getParameter("txt7");
        String confirmpass=req.getParameter("txt8");
       
       String event=req.getParameter("btn1");
                
        out.println(uid);
        out.println(fname);
        out.println(lname);
        out.println(gender);
        out.println(date);
        out.println(address);
        out.println(contact);
        out.println(mail);
        out.println(uname);
        out.println(enterpass);
        out.println(confirmpass);
        
        
        Database db=new Database();
        String result=db.connectdb();
        out.println(result);
        
        
        if(event.equals("SignUp"))
        {
            if(enterpass.equals(confirmpass))
            {
         String insert=db.Insert("insert into i_signup(uid,fname,lname,gender,DOB,address,contact_no,email,username,pass_word)values('"+uid.toString()+"','"+fname.toString()+"','"+lname.toString()+"','"+gender.toString()+"','"+date.toString()+"','"+address.toString()+"','"+contact.toString()+"','"+mail.toString()+"','"+uname.toString()+"','"+enterpass.toString()+"')");
         out.println(insert);
         resp.setContentType("text/html");   
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Signup Successfully');");
             out.println("location='interest_login.jsp';");
             out.println("</script>");
            }
            else
            {
             
             resp.setContentType("text/html");   
             out.println("<script type=\"text/javascript\">");
             out.println("alert('User or password incorrect');");
             out.println("location='Interest_Signup.jsp';");
             out.println("</script>");
            }
            
        }
      if (event.equals("LogIn"))
      {
         resp.sendRedirect("login.jsp");
      }
      
      if(event.equals("Delete"))
            {
            String Delete=db.Delete("delete from i_signup where uid='"+uid.toString()+"'");
            
            out.println(Delete);
            }
      }
}
