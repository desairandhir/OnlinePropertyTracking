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
public class propertysearch extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
         PrintWriter out=resp.getWriter();
         String type=req.getParameter("type");  
         String type1=req.getParameter("property");
         String location=req.getParameter("search");
         HttpSession session=req.getSession();
         session.setAttribute("search", location);
         resp.sendRedirect("listproperty.jsp");         
         out.println(type);
         out.println(type1);
         out.println(location);
         
         Database db=new Database();
         String result=db.connectdb();
         out.println(result);
    }
    
}

    