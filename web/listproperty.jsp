<%-- 
    Document   : listproperty
    Created on : Nov 22, 2022, 12:35:44 PM
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
        color: #ffffff;
	font-size: 16px;
        background: #3333ff;
	cursor: pointer;
	border-radius: 20px;
             }   
        </style>
    </head>
    <body style="      " >
        <%@include file="index.html" %>
         
        
        <div class="container">
             <%
                        Connection cn=null;
                        Statement st=null;
                        String query="";
                        if(session.getAttribute("search")!=null)
                                                       {
                        
                        query="select * from  property where location='"+session.getAttribute("search").toString() +"'";
                        
                        }
                        else
                                                       {
                        query="select * from  property";
                        }
                        try{
Class.forName("com.mysql.jdbc.Driver");
 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_tracking","root","root");  
 st=cn.createStatement();
 String sql=query;
 ResultSet rs=st.executeQuery(sql);
 while(rs.next())
         {
 String pname=rs.getString("property_name");
 String price=rs.getString("price");
 String ttype=rs.getString("transaction_type");
 String ptype=rs.getString("property_type");
 String img=rs.getString("image");
String pid=rs.getString("pid");
%>
<form name="listproperty" action="listproperty" method="post">         
<div class="jumbotron" style="padding: 10px 0px 10px 0px;width: 70%;margin-left: auto;margin-right: auto">
                
                <center>
                        <!--
                    <h1 Style="color: #ffffff;text-shadow:  2px 3px 6px black;font-family: serif;color: black">List Property </h1>
                        <b><hr style="height:2px;width: 50px;border:none;color: #ffcc33;background-color: #ffff33"></b><br></center>-->
                        
                        
                        
                       

                
                        <input type="hidden" name="pid" value="<%=pid%>">
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-4" style="url">
                        <img src="<%=img%>" width="100" height="100">
                        <br><br>
                        <input type="submit" name="btn1" value="View More" class="btn btn-success">
                    </div>
                    
                    <div class="col-sm-5">
                        <label>Property Name:    </label><label>   <%=pname%></label>
                        <br>
                        <label>Transaction type:    </label><label>   <%=ttype%></label>
                        <br>
                          <label>Property type:    </label><label>   <%=ptype%></label>
                        <br>
                         <label>Price:      </label><label>   <%=price%></label>
                         
                        <br><br>
                    </div>
                   
            </div>
        </div>
                                  </form> 
          <%               }
 }catch(Exception ex)
                 {
 out.println(ex.toString());
 }
session.setAttribute("search",null);


                      

%>
        </div>

    </body>
</html>
