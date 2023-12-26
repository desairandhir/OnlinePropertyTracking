<%-- 
    Document   : propertysearch
    Created on : Nov 27, 2022, 12:13:35 PM
    Author     : Randhir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.css"> 
        <title>JSP Page</title>
        <style>
     .jumbotron
{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 70%;
	height: 220px;
	padding-top: 0px;
        padding-left: 50px;
	box-sizing: border-box;
	
        background-color: black;
}
            
input[type="text"],textarea[type="text"]:-moz-placeholder {
    color:black;
}
select
{
        background-color: white;
        color: black;
    
}
option
{
     background-color: white;
     color: black;
}

        </style>
    </head>
    <body style="background-image: url(a4.jpg );background-size: 100% 650px">
        <script src="validation.js"></script>
        <%@include file="index.html" %>
        <br><br><br><br><br>
         <form name="propertysearch" action="propertysearch" method="post">
    
        <div class="jumbotron"> 
             
                
            <center><h1 Style="color: white;text-shadow:  2px 3px 6px black;font-family: serif"><u><span style="color:red;background:non">S</span>earch </u></h1><br>
    </center>
            
                
            <div class="row">
                <div class="col-sm-2">
                    <select class="form-control" name="type" style="width: 120px;height: 40px;">
                        <option>All commercial</option>
                         <option>Flat</option>
                        <option>Banglow</option>
                        <option>Land</option>
                    </select>
           
                </div>
           
                <div class="col-sm-2">
                    <select class="form-control" name="property"  style="width: 120px;height: 40px;">
                         <option>Lease</option>
                         <option>Buy</option>
                       
                    </select>
                </div>
                 <div class="col-sm-5">
                     <input type="text" name="search" placeholder="Location" style="width: 350px;height: 40px;background-color: white" onkeypress="javascript:return isString(event)">
            </div>
            <div class="col-sm-2">
                <input type="submit" name="btn1" value="Search" class="btn btn-primary" style="width:150px;height: 40px;background-color: orange;font-style: bold">
            </div>
            </div>
       </div>
         </form>       
    </body>
</html>
`   