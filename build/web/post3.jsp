<%-- 
    Document   : post3
    Created on : Dec 25, 2022, 5:01:06 PM
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
input[type=text]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border:none;
  border-bottom:2px solid #dedede;  
}


	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>



<br>
<div class="well" style="width:60%;background-color:white;margin-left:273px; margin-top:90px">
<center><label  style="font-family:Bookman Old Style;font-size:35px;margin-top:0px">	Share Your Property Detail</label></center>
<br>
<br>
<label  style="font-family:Bookman Old Style;font-size:20px;color:black; margin-left: 10px"> Property Type</label>
<br>
<br>

<button id="btn1" style="border-radius: 18px;border: solid 1px black;width: 100px;height: 40px">Apartment</button>
&nbsp;&nbsp;&nbsp;
<button id="btn1" style="border-radius: 18px;border: solid 1px black;width: 150px;height: 40px ">Independent House</button>
&nbsp;&nbsp;&nbsp;
<button id="btn1" style="border-radius: 18px;border: solid 1px black;width: 150px;height: 40px ">Independent Floor</button>
&nbsp;&nbsp;&nbsp;
<button id="btn1" style="border-radius: 18px;border: solid 1px black;width: 80px;height: 40px ">Plot</button>   
<br>
<br>
<br>
<br>
<label  style="font-family:Bookman Old Style;font-size:20px;color:black; margin-left: 10px"> Transaction Type</label>
<br>
<br>

<button id="btn1" style="border-radius: 18px;border: solid 1px black;width: 100px;height: 40px">New Booking</button>
&nbsp;&nbsp;&nbsp;
<button id="btn1" style="border-radius: 18px;border: solid 1px black;width: 90px;height: 40px">Resale</button> 
<br>
<br>
<br>
<br>

<label  style="font-family:Bookman Old Style;font-size:20px;color:black; margin-left: 10px"> Construction Status</label>
<br>
<br>
<button id="btn1" style="border-radius: 18px;border: solid 1px black;width: 140px;height: 40px">Ready To Move</button>
&nbsp;&nbsp;
<button id="btn1" style="border-radius: 18px;border: solid 1px black;width: 140px;height: 40px">Under Construction</button>
<br>
<br>
<form>
<label for="fname" First Name</label>
<input type="text" id="fname" name="fname   ">
</form>

</div>

<script type="text/javascript">
	$('button').on('click', function(){
    $('button').removeClass('selected');
    $(this).addClass('selected');
    	
});

</script>
</body>
</html>
    </body>
</html>
