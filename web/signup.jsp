<%-- 
    Document   : signup
    Created on : Oct 27, 2022, 12:10:25 PM
    Author     : Randhir
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.css"> 
        <title>JSP Page</title>
        
     <style>
        .div1
             {
                 background-color: #999999;
                height: 780px;
                width: 50%;
                float: left; 
             } 
             .div2
             {
                background-color: white;
                height: 780px;
                width: 50%;
                float: right;
             }  
        .box
        {
          
             position: relative;
                 z-index: 2;
                 box-shadow: 0px 8px 30px  ;
        }
        label
        {
            color: grey;
        }
        u
        {
             color: #ffff33;
        }
        center
        {
            color: white;
        }
         input[type=text]
            {
                border: none;
	        border-bottom: 1px solid #00cc00;
	        background: transparent;
      	        outline: none;
                color: black;
	        height: 25px;
	margin-left: 40px;
	font-size: 16px;
        font-family: serif;
            }
                 input[type=date]
            {
                border: none;
	border-bottom: 1px solid #00cc00;
	background: transparent;
	outline: none;
	height: 25px;
	margin-left: 40px;
	font-size: 16px;
        height: 40px;
            }
            label
            {
                margin-left: 40px;    
            }
             input[type=password]
            {
                border: none;
	border-bottom: 1px solid #00cc00;
	background: transparent;
	outline: none;
        color: black;
	height: 25px;
	margin-left: 40px;
	font-size: 16px;
        font-family: serif;
            }
            
           input[type=submit]
             {
               border: none;
	outline: none;
	height: 40px;
        color: #ffff33;
	font-size: 16px;
	background: #00cc00;
	cursor: pointer;
	border-radius: 20px;
             }   
             input[type=submit]:hover
             {
                 background: #efed40;
	color: #262626;
             }
            </style>
    </head>
    <body >
        <%
        Connection cn=null;
        Statement st=null;
          int id=1;
        try {
            
               Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_tracking","root","root");
    st=cn.createStatement();
    String sql="select uid from user_mst";
    ResultSet rs=st.executeQuery(sql);
    while(rs.next())
    {
        id=Integer.parseInt(rs.getString("uid"))+1;
        
    }
        } catch (Exception e) {
            out.println(e.toString());
        }
%>
        <%@include file="index.html" %>
        <script src="validation.js"></script>
         <form name="signup" action="signup" method="post">
        
            <div class="box" style="margin-left:300px ;background: white;width: 50% ;margin-top: 100px;margin-bottom: 100px;height: 78    0px  ">
                <div class="div1">
                    <center>
                        <br><br><br><br><br><br><br><br><br>
                        <h1 Style="color: #ffffff;text-shadow:  2px 3px 6px black;font-family: serif"> <span style="color: #ffff33;background:non">S</span>eller <span style="color: #ffff33;background:non">S</span>ign<span style="color: #ffff33;background:non">U</span>p </h1></center>
                    
                    <center><b><hr style="height:2px;width: 50px;border:none;color: #ffff33;background-color: #ffff33"></b><br><br >
                        You are just few seconds away from<br> our World.Just tell us a little<br> information about you.
                    </center>
                </div>
                 <div class="div2"><br>
                     <center> <img src="user.png" class="user"><br><br></center>
                     <span class="user"><i class="fa fa-user"></i></span>
                     <input type="text" name="txt1" placeholder="Enter Uid" value="<%=id%>" onkeypress="javascript:return isAlphanumric(event)">
                     <br><br>
                     <input type="text" name="txt2" placeholder="Enter First Name" onkeypress="javascript:return isString(event)">
                     <br><br>
                     <input type="text" name="txt3" placeholder="Enter Last Name" onkeypress="javascript:return isString(event)">
                     <br><br>
                      <select class="form-control" name="type" style="border:none;border-bottom: 1px solid #00cc00;margin-left: 40px;font-family: serif;width: 180px">
                        <option>Enter Gender</option>
                         <option>Male</option>
                        <option>Female</option>
                    </select>
                     <br>
                     <label style="font-family: serif;"> Date of Birth</label>    
                     <input type="date" name="date" placeholder="Enter Date" class="form-control" style="border:none;border-bottom: 1px solid #00cc00;font-family: serif;width: 170px">
                     <br>
                     <input type="text" name="txt4" placeholder="Enter Address" onkeypress="javascript:return isAlphanumric(event)">
                     <br><br>
                     <input type="text" name="txt5" placeholder="Enter Contact Number" onkeypress="javascript:return isContactno(event)" maxlength="10">
                     <br><br>
                     <input type="text" name="txt9" placeholder="Enter Email">
                     <br><br>
                     <input type="text" name="txt6" placeholder="Enter User Name" onkeypress="javascript:return isString">
                     <br><br>
                         <input type="password" name="txt7" placeholder="Enter Password" onkeypress="javascript:return isNumber"><br><br>
                         <input type="password" name="txt8" placeholder="confirm Password" onkeypress="javascript:return isNumber">
                     <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="SignUp" class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="LogIn" class="btn btn-primary"> &nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="Delete" class="btn btn-danger">
                 </div>
            </div>
         </form>     
    </body>
</html>
