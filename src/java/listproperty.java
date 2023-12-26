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
public class listproperty extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out=resp.getWriter();
        
        String event=req.getParameter("btn1");
        String pid=req.getParameter("pid");
        Database db=new Database();
        String result=db.connectdb();
        out.println(result);
         
        
          if (event.equals("View More"))
      {
          HttpSession session=req.getSession();
          session.setAttribute("pid", pid);
         resp.sendRedirect("aboutproperty.jsp");
      }
       
    }
    
}

   