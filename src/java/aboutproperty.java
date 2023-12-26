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
import javax.servlet.http.HttpSession;

/**
 *
 */
public class aboutproperty extends HttpServlet 
{

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out=resp.getWriter();
        
        String event=req.getParameter("btn1");
        String uid=req.getParameter("uid");
        String pname=req.getParameter("pname");
        Database db=new Database();
       String result= db.connectdb();
       out.println(result);
        
       HttpSession session=req.getSession();
          if (event.equals("Back"))
      {
         resp.sendRedirect("listproperty.jsp");
      }
       if (event.equals("show Interest"))
      {
          session.setAttribute("pname", pname);
          session.setAttribute("uid", uid);
        // String insert=db.Insert("insert into interest(fname,lname,address,contact_no,email,property_name,uid) values('"+session.getAttribute("fname").toString()+"','"+session.getAttribute("lname").toString()+"','"+session.getAttribute("address").toString()+"','"+session.getAttribute("contact_no").toString()+"','"+session.getAttribute("email").toString()+"','"+pname.toString()+"','"+uid.toString()+"')");
        // out.println(insert);
          resp.sendRedirect("interest_login.jsp");
      }
       
    }
    
}
