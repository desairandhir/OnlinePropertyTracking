<%-- 
    Document   : feedback
    Created on : Dec 1, 2022, 2:43:55 PM
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
                 background-color: #cccccc;
                height: 430px;
                width: 50%;
                float: left;
             
             
             
             } 
             
             .div2
             {
                background-color: white;
                height: 430px;
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
        
	font-size: 16px;
	
	cursor: pointer;
	border-radius: 20px;
        padding: 14px 25px;
             }   
             input[type=reset]
             {
               border: none;
	outline: none;
	height: 40px;
        
	font-size: 16px;
	
	cursor: pointer;
	border-radius: 20px;
        padding: 14px 25px;
             }
             input[type=submit]:hover
             {
                 background: #00cc00;
	color: #262626;
             }
               input[type=reset]:hover
             {
                 background: #ff3333;
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
  
    </head>
    <body style="background-color: ">
        <%@include file="index.html" %>
        <script src="validation.js"></script>
         <form name="feedback" action="feedback" method="post">
            <div class="well" style="margin-left:300px;width: 50% ;margin-top: 100px;height: 430px  ">
                <div class="div1"> 
                   
                    <center>
                        <br><br><br>
                        <h1 Style="color: #ffffff;text-shadow:  2px 3px 10px black"> Feedback </h1></center>
                    <br><br>
                    <center><b><hr style="height:2px;width: 50px;border:none;color: #ffff33;background-color: #ffff33"></b><br><br >
                        Give Feedback...
                    </center> 
                </div>
                 <div class="div2"><br>
                     <center> <img src="user.png" class="user"><br><br>
                     <span class="user"><i class="fa fa-user"></i></span>
                     <input type="text" name="txt1" placeholder="UserName" >
                     <br><br>
                     <input type="text" name="txt2" placeholder="Enter Email">
                     <br><br>
                     <input type="text" name="txt3" placeholder="Enter subject"> 
                     <br><br>
                         <input type="text" name="txt4" placeholder="Your Feedback">
                     <br>
                     
                     <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="Send" class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="reset" name="btn1" value="Cancel" class="btn btn-danger">
                     <br>
                    
                  
        </div>
         </form>          
    </body>
</html>
 

