<%-- 
    Document   : register
    Created on : Oct 25, 2022, 12:52:40 PM
    Author     : Randhir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <title>JSP Page</title>
         
        <style>
        .div1
             {
                 background-color: #999999;
                height: 400px;
                width: 50%;
                float: left;
             
             
             
             } 
             
             .div2
             {
                background-color: white;
                height: 400px;
                width: 50%;
                float: right;
             
             
             
             }  
        .jumbotron
        {
          
             position: relative;
                 z-index: 2;
                 box-shadow: 0px 8px 30px  ;
            
        }
        label
        {
            color: white;
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
	
	font-size: 16px;
            }
            input[type=password]
            {
                border: none;
	border-bottom: 1px solid #00cc00;
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
        width: 60px;
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
            a
{
    color: #00cc00;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
        float: right;
}
               
        </style>
        
    </head>
    <body >
        <%@include file="index.html" %>
        
        <script src="validation.js"></script>
        <form name="login" action="login" method="post">
        
            <div class="jumbotron" style="margin-left:300px;width: 50% ;margin-top: 100px;height: 400px  ">
                <div class="div1"> 
                   
                    <center>
                        <br><br><br>
                        <h1 Style="color: #ffffff;text-shadow:  2px 3px 6px black;font-family: serif"> Seller Login </h1></center>
                    <br><br>
                    <center><b><hr style="height:2px;width: 50px;border:none;color: #ffff33;background-color: #ffff33"></b><br><br >
                        You are just few seconds away from<br> our World.Just tell us a little<br> information about you.
                    </center>
                </div>
                 <div class="div2"><br>
                     <center> <img src="user.png" class="user"><br><br>
                      <span class="user"><i class="fa fa-user"></i></span> 
                      <input type="text" name="txt1" placeholder="Enter User Name" >
                     <br><br>
                     <input type="password" name="txt2" placeholder="Enter Password">
                     </center>
                     <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="LogIn" class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="SignUp" class="btn btn-primary">
                     
                     <br><br>
                     <a href="forgotpassword.jsp">Forgot Password....?</a>
                 </div>

            </div>
        </form>   
    </body>
</html>

    