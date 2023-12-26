<%-- 
    Document   : post1
    Created on : Dec 25, 2022, 4:19:56 PM
    Author     : Randhir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!DOCTYPE html>

	<title></title>
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
<div class="well" style="width:60%;background-color:white;margin-left:273px;margin-top: 90px">
    <center><label  style="font-family:Bookman Old Style;font-size:30px;margin-left:0px">	Tell Us About Property Location</label> </center>
<br>
<label  style="font-family:Bookman Old Style;font-size:20px;margin-left:0px">	Property For</label> 
<br><br>
<button id="btn2" style="border-radius: 10px;border: solid 1px black; height: 30px; width: 60px ">Rent</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button id="btn2" style="border-radius: 10px;border: solid 1px black; height: 30px; width: 60px ">Sell</button>
<br><br><br>
<input type="text" name="area" placeholder="Street/Area/Landmark" style=" border:none;border-bottom:1px solid #dedede;width:550px">
<br><br><br>
<input type="text" name="city" placeholder="City" style=" border:none;border-bottom:1px solid #dedede;width:550px">
<br><br><br>
<input type="text" name="locality" placeholder="Locality" style=" border:none;border-bottom:1px solid #dedede;width:550px">
<br><br><br>
<input type="text" name="building" placeholder="building/Project/Society(Optional)" style=" border:none;border-bottom:1px solid #dedede;width:550px">
<br><br><br>

</div>


<script type="text/javascript">
	$('button').on('click', function(){
    $('button').removeClass('selected');
    $(this).addClass('selected');
    	
});
</script>

    </body>
</html>
