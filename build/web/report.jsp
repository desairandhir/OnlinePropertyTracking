<%-- 
    Document   : report
    Created on : Feb 13, 2022, 3:06:47 PM
    Author     : Randhir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" type="text/css" href="bootstrap.css"> 
   
    <style>.jumbotron
        {
          
             position: relative;
                 z-index: 2;
                 box-shadow: 0px 8px 30px  ;
                 background-color: #00cccc;
                 height: 700px;
                 border-radius: 20px;
            
        }
        input[type=submit]
             {
               border: none;
	outline: none;
	height: 60px;
        width: 180px;
        color: #ffff33;
	font-size: 16px;
        background: #0099cc;
	cursor: pointer;
	border-radius: 20px;
             } 
        </style>
    </head>
    <body>
        
        <form name="Report" action="view_report.jsp">
        <div class="jumbotron" style="margin-left:300px;width: 50% ;margin-top: 100px ">
            <h1 style="font-family: serif" ><center>
                      REPORT
                </center>
              
            </h1>
            <div class="row">
            <div class="div col-sm-2">  </div>
            <div class="div col-sm-4">
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<input type="submit" name="btn1" value="Property" class="btn btn-success">
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <input type="submit" name="btn1" value="User-mst" class="btn btn-success">
            </div>
            <div class="div col-sm-4">
           &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<input type="submit" name="btn1" value="Interest" class="btn btn-success">
           &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<input type="submit" name="btn1" value="Feedback" class="btn btn-success">
            </div>
            
            <div class="col-sm-4">
            </div>
            </div>
       
            
            <div class="row">
                 <br><br>
                 <div class="col-sm-3"></div>
                 <div class="col-sm-6">
                 
                     <input type="text" name="date1"  class="form-control"></div>
                 <br><br></div>
            <br>
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-6">
           <input type="submit" name="btn1" value="Post" class="btn btn-success">
            </div></div>
           
            <div class="row">
                 <br><br>
                 <div class="col-sm-3"></div>
                 <div class="col-sm-6">
                 
                     <input type="text" name="Location"  class="form-control"></div>
                 <br><br></div>
            <br>
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-6">
           <input type="submit" name="btn1" value="Location" class="btn btn-success">
            </div></div>
           </div>
 
           
        </form>
    </body>
</html>
