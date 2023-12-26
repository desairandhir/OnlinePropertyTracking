<%-- 
    Document   : post
    Created on : Nov 30, 2022, 2:04:06 PM
    Author     : Randhir
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.css"> 
        <title>JSP Page</title>
        
        <style>
           .div1
             {
                 background-color: #cccccc;
                height: 800px;
                width: 50%;
                float: left; 
             } 
             
             .div2
             {
                background-color: white;
                height: 800px;
                width: 50%;
                float: right;
             }  
        .box
        {
          
             position: relative;
                 z-index: 2;
                 box-shadow: 0px 8px 30px  ;
        }
        label
        {
            color: grey;
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
	margin-left: 40px;
	font-size: 16px;
        font-family: serif;
            }
           
       
           
            label
            {
                margin-left: 40px;
                
            }
       
            
            
             input[type=submit]:hover
             {
                 background: #efed40;
	color: #262626;
             }
         
     center
     {
         color: black;
     }
     
        </style>
    </head>
    
        <body style="background-color:">
                <%
      
Connection cn=null;
                        Statement st=null;
                       int id=1;
                       try
                       {
                            
Class.forName("com.mysql.jdbc.Driver");
Class.forName("com.mysql.jdbc.Driver");
 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_tracking","root","root");  
 st=cn.createStatement();
 String sql="select * from property";
 ResultSet rs=st.executeQuery(sql);
 while(rs.next())
         {
     
     id=Integer.parseInt( rs.getString("pid"))+1;
    
     
     }
 }
                       catch(Exception ex)
                                                             {
                           out.println(ex.toString());
                       }
    

%>
      
            <%@include file="index1.html" %>
            <script src="validation.js"></script>
             <form name="post" action="post" method="post">
                 
                 <script type="text/javascript">
                         function clear()
                         {
                             
                            
                             document.getElementById("txt2").value="";
                             document.getElementById("txt3").value="";
                             document.getElementById("txt4").value="";
                             document.getElementById("txt5").value="";
                             document.getElementById("txt6").value="";
                             document.getElementById("txt7").value="";
                             document.getElementById("txt8").value="";
                            
                             
                             
                             
                             
                         }
                     </script>
        
            <div class="box" style="margin-left:300px ;background: transparent;width: 50% ;margin-top: 100px;margin-bottom: 100px;height: 800px  ">
                <div class="div1"> 
                   
                    <center>
                        <br><br><br><br><br><br><br><br><br>
                        <h1 Style="color: #ffffff;text-shadow:  2px 3px 6px black;font-family: serif">Post Property </h1></center>
                    
                    <center><b><hr style="height:2px;width: 50px;border:none;color: #ffff33;background-color: #ffff33"></b><br><br >
                        You are just few seconds away from<br> our World.Just tell us a little<br> information about you.
                    </center>
                </div>
                 <div class="div2"><br>
                     <center> <img src="user.png" class="user"><br><br></center>
                     <span class="user"><i class="fa fa-user"></i></span>
                     <input type="text" id="txt1" name="txt1" placeholder="Enter Pid"  value="<%=id%>" onkeypress="javascript:return isAlphanumric(event)">
                     
                     <br><br>
                     <input type="text" id="txt2"  name="txt2" placeholder="Enter Location" value="<%=session.getAttribute("location")%>" onkeypress="javascript:return isAlphanumric(event)">
                     <br><br>
                     <input type="text" id="txt3" name="txt3" placeholder="Enter Area in sq.feet" value="<%=session.getAttribute("area")%>" onkeypress="javascript:return isFloat(event)">
                     <br><br>
                     <input type="text" id="txt4" name="txt4" placeholder="Enter Seller Name" value="<%=session.getAttribute("sname")%>" onkeypress="javascript:return isString(event)">
                     <br><br>
                      <select class="form-control" name="type"  style="border:none;border-bottom: 1px solid #00cc00;margin-left: 40px;width: 180px;background-color: transparent">
                           <option >Enter Transaction Type</option>
                          <option selected><%=session.getAttribute("ttype")%></option>
                         <option>Sale</option>
                        <option>Rent</option>
                    </select>
                     <br>
                     <select class="form-control" id="txt9" name="type1"  style="border:none;border-bottom: 1px solid #00cc00;margin-left: 40px;width: 180px;background-color: transparent">
                       <option >Enter Property Type</option>
                         <option selected><%=session.getAttribute("ptype")%></option>
                         <option>Flat</option>
                        <option>Banglow</option>
                        <option>Land</option>
                    </select>
                
                    </center>
                
                     
                          <br>
                     <input type="text" id="txt5" name="txt5" placeholder="Enter Property Name" value="<%=session.getAttribute("pname")%>" onkeypress="javascript:return isAlphanumric(event)">
                     <br><br>
                     <input id="txt6" type="text" name="txt6" placeholder="Enter Buildup Year" value="<%=session.getAttribute("byear")%>" onkeypress="javascript:return isFloat(event)">  
                       <br><br>
                       <input type="text" id="txt7" name="txt7" placeholder="Enter Price" value="<%=session.getAttribute("price")%>" onkeypress="javascript:return isFloat(event)">
                       <br><br>
                       <input type="text" id="txt8" name="txt8" placeholder="Enter Description" value="<%=session.getAttribute("description")%>" onkeypress="javascript:return isAlphanumric(event)">
                       <br><br>
                       <input type="text" id="txt" name="txt10" placeholder="Uid" value="<%=session.getAttribute("userid")%>" onkeypress="javascript:return isAlphanumric(event)">
                       
                       <br></center>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <label><u> Add Image:</u>
                         <input type="file" name="txt9" placeholder="add image" value="<%=session.getAttribute("img")%>"class="formcontrol"></label>
                     
                         </center>
                     <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="Post" class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="Update" class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn1" value="Delete" class="btn btn-danger">
                     
                     <
                 </div>
                     <%
                  if(session.getAttribute("location")==null)
                  {
                      
                  
                                          



%>
                     <script>
                         clear();   
                     </script>
                     
                     <%
                     
}
%>
            </div>
             </form>     
    </body>
</html>

         
   
