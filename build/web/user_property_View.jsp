<%-- 
    Document   : user_property_View
    Created on : Jan 2, 2022, 2:05:40 PM
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
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.css">
        <style>
       .jumbotron
       {
        position: relative;
        margin-left: auto;
        margin-right: auto;
        margin-top: 100px;
       opacity: 0.9;
       box-shadow: 0px 8px 30px  ;
       
       
       }

            input[type=submit]
             {
               border: none;
	outline: none;
	height: 40px;
        width: 60px;
        color: #ffffff;
	font-size: 16px;
        background: #3333ff;
	cursor: pointer;
	border-radius: 20px;
             }   
        </style>
    </head>
    <body style="      " >
        <%@include file="index1.html" %>
         <form name="listproperty" action="listproperty" method="post">
        
        <div class="container">
             <%
                        Connection cn=null;
                        Statement st=null;
                        try{
Class.forName("com.mysql.jdbc.Driver");
 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_tracking","root","root");  
 st=cn.createStatement();
 String sql="select * from  property where uid='"+session.getAttribute("userid").toString() +"'";
 ResultSet rs=st.executeQuery(sql);
 while(rs.next())
         {
     String pid=rs.getString("pid");
     String location=rs.getString("location");
     String area=rs.getString("area");
     String sname=rs.getString("sellername");
 String pname=rs.getString("property_name");
  String ttype=rs.getString("transaction_type");
 String ptype=rs.getString("property_type");
 String price=rs.getString("price");
 String byear=rs.getString("builtup_year");
 String description=rs.getString("discription");
 String img=rs.getString("image");
 session.setAttribute("pid",pid );
session.setAttribute("location", location);
session.setAttribute("area", area);
session.setAttribute("sname", sname);
session.setAttribute("pname", pname);
session.setAttribute("ttype", ttype);
session.setAttribute("ptype", ptype);
session.setAttribute("price", price);
session.setAttribute("byear", byear);
session.setAttribute("description", description);
session.setAttribute("img", img);
%>

            <div class="jumbotron" style="padding: 10px 0px 10px 0px;width: 70%;margin-left: auto;margin-right: auto">
                
                <center>
                        <!--
                    <h1 Style="color: #ffffff;text-shadow:  2px 3px 6px black;font-family: serif;color: black">List Property </h1>
                        <b><hr style="height:2px;width: 50px;border:none;color: #ffcc33;background-color: #ffff33"></b><br></center>-->
                        
                        
                        
                       

                
                
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-4">
          
                        
                        <img src="<%=img%>" width="200" height="200">
                        <br><br>
                        <a href="post.jsp"   class="btn btn-success" >Edit</a>
                </div>
                    
                    <div class="col-sm-5">
                        <label>Location:    </label><label>   <%=location%></label>
                        <br>
                        <label>Area:    </label><label>   <%=area%></label>
                        <br>
                        <label>Seller Name:    </label><label>   <%=sname%></label>
                        <br>
                         <label>Transaction Type:      </label><label>   <%=ttype%></label>
                          <br>
                         <label>Property Type:      </label><label>   <%=ptype%></label>
                        <br>
                         <label>Property Name:      </label><label>   <%=pname%></label>
                        <br>
                         <label>BuildUp Year:      </label><label>   <%=byear%></label>
                        <br>
                         <label>Price:      </label><label>   <%=price%></label>
                        <br>
                         <label>Description:      </label><label>   <%=description%></label>
                       
                        <br><br>
                    </div>
                   
            </div>
        </div>
          <%               }
 }catch(Exception ex)
                 {
 out.println(ex.toString());
 }



                      

%>
        </div>
         </form> 
    </body>
</html>
