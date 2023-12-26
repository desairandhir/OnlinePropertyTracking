/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 */
public class post extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
     PrintWriter out=resp.getWriter();
     String pid=req.getParameter("txt1");  
     String location=req.getParameter("txt2");
     String area=req.getParameter("txt3");
     String sname=req.getParameter("txt4");  
     String ttype=req.getParameter("type");  
     String ptype=req.getParameter("type1");  
     String pname=req.getParameter("txt5");      
     String byear=req.getParameter("txt6");      
     String price=req.getParameter("txt7");      
     String description=req.getParameter("txt8");   
     String image=req.getParameter("txt9");     
     String uid=req.getParameter("txt10"); 
     
            String event=req.getParameter("btn1");

     
//     out.println(pid);
//     out.println(location);
//     out.println(area);
//     out.println(sname);
//     out.println(ttype);
//     out.println(ptype);
//     out.println(pname);
//     out.println(byear);
//     out.println(price);
//     out.println(description);
//     out.println(image);
//     out.println(uid);
     
      Date td = new Date();
String b = new String("");
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
b = format.format(td);
     out.println(b);
     HttpSession session=req.getSession();
     
     Database db=new Database();
     String result=db.connectdb();
     out.println(result);
     
      if(event.equals("Post"))
      {
         String insert=db.Insert("insert into property(location,area,sellername,transaction_type,property_type,property_name,builtup_year,price,image,discription,uid,pdate) values('"+location.toString()+"','"+area.toString()+"','"+sname.toString()+"','"+ttype.toString()+"','"+ptype.toString()+"','"+pname.toString()+"','"+byear.toString()+"','"+price.toString()+"','Image/"+image.toString()+"','"+description.toString()+"','"+session.getAttribute("userid").toString() +"','"+b.toString()+"')");
         out.println(insert);
          resp.setContentType("text/html");   
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Post Property Successfully');");
             out.println("location='user_property_View.jsp';");
             out.println("</script>");
     
         
      }
      
        if(event.equals("Update"))
            {
            
            String update=db.Update("update property set location='"+location.toString()+"',area='"+area.toString()+"',sellername='"+sname.toString()+"',transaction_type='"+ttype.toString()+"',property_type='"+ptype.toString()+"',property_name='"+pname.toString()+"',builtup_year='"+byear.toString()+"',price='"+price.toString()+"',image='Image/"+image.toString()+"',discription='"+description.toString()+"' where uid='"+uid.toString()+"' ");
            out.println(update);
            resp.sendRedirect("listproperty.jsp");
            }
        
       if(event.equals("Delete"))
            {
            String Delete=db.Delete("delete from property where uid='"+uid.toString()+"'");
            
            out.println(Delete);
            resp.sendRedirect("post.jsp");
            }
    }
    
}
