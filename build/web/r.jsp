<%-- 
    Document   : r
    Created on : Nov 25, 2022, 11:20:18 PM
    Author     : Randhir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>     
    <style>
         .div1
             {
                background-color:  #ffffff;
                height: 400px;
                width: 50%;
                margin-right:  20px;
                
               
               
                
             } 
        
.container {
  position: relative;
  width: 600px;
  margin: 30px auto 0;
  height: 320px;
  background-color: #999ede;
  top: 50%;
  margin-top: 180px;
  -moz-transition: all 0.5s;
  -o-transition: all 0.5s;
  -webkit-transition: all 0.5s;
  transition: all 0.5s;
}
 input[type=text]
            {
                border: none;
                border-bottom: 1px solid #0000ff;
	        background: transparent;
      	        outline: none;
                color: black;
	        height: 25px;
	
	font-size: 16px;
            }
        input[type=submit]
             {
               border: none;
	outline: none;
	height: 40px;
        color: #262626;
	font-size: 16px;
        background: #ff00cc;
	cursor: pointer;
	border-radius: 20px;
        padding: 14px 25px;
             }   
             input[type=submit]:hover
             {
                 background: green;
	color: #262626;
             }
        

    </style>
    <body style="background-color:  #5356ad">
        <div class="container">
            <div clas="well" style="width: 50%; margin-top: 60px;height: 400px "></div>
              <div class="div1" style="margin-top: -430px;margin-left: 30px">
                   
                <center>
                    <br><br> 
                    <h1 style="color: #ff00cc;font-family: sans-serif">   Feedback </h1> 
                    
                    <input type="text" name="txt1" placeholder="Enter Email"><br><br>
                    <input type="text" name="txt2" placeholder="Enter Contat No"><br><br>
                    <input type="text" name="txt3" placeholder="Enter Subject"><br><br>
                    <input type="text" name="txt4" placeholder="Your Feedback"><br><br>
                    <input type="submit" name="btn1" value="Send" class="btn btn-success">&nbsp;&nbsp;
                    <input type="submit" name="btn2" value="Back" class="btn btn-danger">
                    
                </center>       
                </div>
        </div>
           
     </body>
</html>
 <!-- <%
                        Connection cn=null;
                        Statement st=null;
                        try{
Class.forName("com.mysql.jdbc.Driver");
 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_tracking","root","root");  
 st=cn.createStatement();
 String sql="select * from  property";
 Resultset rs=st.executeQuery(sql);
 while(rs.next())
         {
 String location=rs.getString("location");
 String area=rs.getString("area");
     String ttype=rs.getString("transaction_type");
 String ptype=rs.getString("property_type");
 String pname=rs.getString("property_name");
 String byear=rs.getString("builtup_year");
 String price=rs.getString("price");
 String description=rs.getString("discription");
 String img=rs.getString("image");
 
%>-->
                
                <!--    <%               }
 }catch(Exception ex)
                 {
 out.println(ex.toString());
 }
%>  -->  
          