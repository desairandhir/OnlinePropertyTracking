<%-- 
    Document   : post2
    Created on : Dec 25, 2022, 4:23:37 PM
    Author     : Randhir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <!DOCTYPE html>

	<title></title>
        <link rel="stylesheet" href="asseset1/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="asseset1/css/feedback.css">
        <script href="asseset1/bootstrap/js/bootstrap.min.js"></script>
        <script src="asseset1/js/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="layout/styles/layout.css">
	<link rel="stylesheet" type="text/css" href="bootstrap.css">
	<style type="text/css">
            

		.jumbotron
		{
			width: 60%;
			background-color: #fff;
			height: 25px;
		}
		body
		{
			background-color: #FCF5F5;
		}
		button{
  color:black;
  background-color: #fff;
}


input[type=submit].active{
  color:white;
  background-color: #9D0ADC;
}
button.selected{
  color:white;
  background-color: #9D0ADC;
}
label {
    color:green;
    font-family: Consolas, Baskerville, 'Segoe UI', sans-serif;
}

input[type=checkbox]:hover {
    box-shadow:0px 0px 10px #1300ff;
}


	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>



<br>
<center><div class="well" style="width:60%;background-color:white; margin-top:90px">
<label  style="font-family:Bookman Old Style;font-size:23px;margin-top:0px">	Sell\rent Property Here...</label>
</div></center> 
<br>
<div class="well"  style="width:60%;background-color:white;margin-left:273px">
<label  style="font-family:Bookman Old Style;font-size:18px;margin-left:0px">	Tell Us About Yourself</label> 
<br>
<label  style="font-family:Bookman Old Style;font-size:10px;margin-left:0px">	I Am</label> 
<br><br>
<label class= "btn btn-denger">
    <input type="radio" name="options" style="border-radius: 10px;border: solid 1px black;opacity: 1 " autocomplete="off" >Owner</label>
&nbsp;
<label class="btn btn-denger">
    <input type="radio" name="options" style="border-radius: 10px;border: solid 1px black;opacity: 1" autocomplete="off">Broker</label>
    
<br><br>
<input   type="text" name="name" placeholder="Name" style=" border:none;border-bottom:1px solid #dedede;width:550px">
</div>
<br>

<br>

<center><div class="well" style="width:60%;background-color:white">
      
         <center><label  style="font-family:Bookman Old Style;font-size:30px;margin-left:0px">	Tell Us About Property Location</label> </center>
<br>
<label  style="font-family:Bookman Old Style;font-size:20px;margin-left:0px">	Property For</label> 
<br><br>
<label class="btn btn-denger">
<input type="radio" name="options1" style="border-radius: 10px;border: solid 1px black;opacity: 1" autocomplete="off">Rent</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label class="btn btn-denger">
    <input type="radio" name="options1" style="border-radius: 10px;border: solid 1px black;opacity: 1" autocomplete="off">Sell</label>
<br><br><br>
<input type="text" name="area" placeholder="Street/Area/Landmark" style=" border:none;border-bottom:1px solid #dedede;width:550px">
<br><br><br>
<input type="text" name="city" placeholder="City" style=" border:none;border-bottom:1px solid #dedede;width:550px">
<br><br><br>
<input type="text" name="locality" placeholder="Locality" style=" border:none;border-bottom:1px solid #dedede;width:550px">
<br><br><br>
<input type="text" name="building" placeholder="building/Project/Society(Optional)" style=" border:none;border-bottom:1px solid #dedede;width:550px">
<br><br><br>

</div></center>

<script src="asseset1/js/jquery-1.11.1.min.js"></script>
<script src="asseset1/js/jquery.backstretch.min.js"></script>
<script src="asseset1/js/scripts.js"></script>
</body>
</html>