<%-- 
    Document   : forgotpassword
    Created on : Dec 1, 2022, 2:14:50 PM
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
                 background-color:  #00cc00;
                height: 400px;
                width: 50%;
                float: left;
             
             
             
             } 
             
             .div2
             {
                 background-color: #ffffff;
                height: 400px;
                width: 50%;
                float: right;
             
             
             
             }  
        .well
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
	font-family: serif;
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
	font-family: serif;
	font-size: 16px;
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
    <body style="background-color:  #ffff33">
        <script src="validation.js"></script>
        <form name="forgotpassword" action="forgotpassword" method="post">
            <div class="well" style="margin-left:300px;width: 50% ;margin-top: 100px;height: 400px  ">
                <div class="div1"> 
                   
                    <center>
                        <br><br><br>
                        <h1 Style="color: #ffffff;text-shadow:  2px 3px 6px black"> Forgot Password </h1></center>
                    
                    <center><b><hr style="height:2px;width: 50px;border:none;color: #ffff33;background-color: #ffff33"></b><br><br >
                        Get Your New Password...
                    </center> 
                </div>
                 <div class="div2"><br>
                     <center> <img src="user.png" class="user"><br><br>
                     <span class="user"><i class="fa fa-user"></i></span>
                     <input type="text" name="txt1" placeholder="Enter Email Id">
                     <br><br>
                     <input type="text" name="txt2" placeholder="Enter Contact No" onkeypress="javascript:return isContactno(event)">
                     <br><br>
                     <input type="password" name="txt3" placeholder="Enter New Password" onkeypress="javascript:return isNumber(event)">
                     <br><br>
                     <input type="password" name="txt4" placeholder="Confirm New Password"onkeypress="javascript:return isNumber(event)">
                     <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="Reset Password" class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="Back" class="btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;
                  
        </div>
        </form>
    </body>
</html>
