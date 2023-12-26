<%-- 
    Document   : sample
    Created on : Dec 22, 2022, 2:11:49 PM
    Author     : Randhir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
          .jumbotron
          {
              margin-top: 400px;
              color:white;
              font-size: 30px;
              
    margin-bottom: 0px;
  /*  background-image: url(Image/sample1.jpg);*/
    background-position: 0% 25%;
    background-size: cover;
    height: 700px;
    background-repeat: no-repeat;
    text-shadow: black 0.3em 0.3em 0.3em
          }
         ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
li a:active{
  background-color: orange;
}


        </style>
    </head>
    <body style="background-image: url(Image/sample1.jpg);background-size: cover">   
       
<ul>
    <li><a><h1>ONLINE PROPERTY TRACKING</h1></a></li>
<ul style="float:right;margin-top: 30px;font-size: 20px;">
  <li><a href="#home">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a class="active" href="#about">About</a></li>
  <ul>
</ul>
</ul>
    
        <div class="jumbotron">
           <center>  <h4 class="text-uppercase"> Property Tracking</h4>
               <h3>Find a Home to Suit Your Lifestyle</h3></center>>
        </div>    
    </body>
</html>
