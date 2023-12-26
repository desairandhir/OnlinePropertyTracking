<%-- 
    Document   : aboutproperty
    Created on : Jan 3, 2022, 2:37:27 PM
    Author     : Randhir
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.css">
        <title>JSP Page</title>
         <style>
           
        label
        {
            color: black ;
        }
            input[type=submit]
             {
               border: none;
	outline: none;
	height: 40px;
        color:   #000;
	font-size: 16px;
        background: #33cc00;
	cursor: pointer;
	border-radius: 20px;
             }   
        </style>

    </head>
    <body>
         <form name="aboutproperty" action="aboutproperty" method="post">
        <div class="container"style=" margin-top: 30px; width: 80%;height: 600px " >
                 <center>
                  <%
                        Connection cn=null;
                        Statement st=null;
                        try{
Class.forName("com.mysql.jdbc.Driver");
 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_tracking","root","root");  
 st=cn.createStatement();
 String sql="select * from  property where pid='"+session.getAttribute("pid") +"'";
 ResultSet rs=st.executeQuery(sql);
 if(rs.next())
         
         {
     String location=rs.getString("location");
     String area=rs.getString("area");
     String pname=rs.getString("property_name");
 String price=rs.getString("price");
 String ttype=rs.getString("transaction_type");
 String ptype=rs.getString("property_type");
 String byear=rs.getString("builtup_year");
 String discription=rs.getString("discription");
 String img=rs.getString("image");
 String sname=rs.getString("sellername");
 String uid=rs.getString("uid");

%>
       
                     <h1 Style="color:  #333333;text-shadow:  2px 3px 6px black;font-family: serif">About Property </h1>
                 <b><hr style="height:2px;width: 50px;border:none "></b><br></center>
                 <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">
                        <img src="<%=img%>" width="400" height="400">
                        <br><br>
                        <input type="hidden" name="uid" value="<%=uid%>">
                        <input type="hidden" name="pname" value="<%=pname%>">
                    </div>
                    
                    <div class="col-sm-5">
                        <label>Location Name:  </label><label> <%=location%></label>
                        <br>
                         <label>Area:  </label><label> <%=area%></label>
                         <br>
                         <label>Transaction Type:  </label><label> <%=ttype%></label>
                         <br>
                         <label>Property Type:  </label><label> <%=ptype%> </label>
                         <br>
                         <label>Property Name:  </label><label> <%=pname%></label>
                        <br>
                        <label>Buildup Year:  </label><label> <%=byear%></label>
                        <br>
                        <label>Price:  </label><label> <%=price%></label>
                        <br>
                        <label>Description:  </label><label> <%=discription%></label>
                        <br><br>
                       
                        <input type="submit" name="btn1" value="show Interest" class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                        <input type="submit" name="btn1" value="Back" class="btn btn-success">
                    </div>
                    
                
        
            </div>
                   
        </div>
<%
 }      
}catch(Exception ex)
{
    out.println(ex);
}
%>
       
        
         </form>   
    </body>
</html>
