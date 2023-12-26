<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<%@include file="index.html" %>
<br>
<center>
    <h1 Style="color: #000000;text-shadow:  2px 3px 10px black"> Feedback </h1></center>
<br>
<table id="customers">
  <tr>
    <th>Username</th>
    <th>Email</th>
    <th>Subject</th>
    <th>Feedback</th>
    
  </tr>
  <%
Connection cn=null;
 Statement st=null;  

 
 try
 {
 Class.forName("com.mysql.jdbc.Driver");
 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/property_tracking","root","root");
    st=cn.createStatement();
    String sql="select * from feedback";
    ResultSet rs=st.executeQuery(sql);
    while(rs.next())
               {
    
%>
  <tr>
    <td><%=rs.getString("uname")%> </td>
    <td> <%=rs.getString("email")%> </td>
    <td><%=rs.getString("subject")%>  </td>
    <td> <%=rs.getString("feedback")%> </td>
    
    
  </tr>
  <%
  
    }
 }catch(Exception ex)
 {
 out.println(ex.toString());
 }
  %>
 </table>

</body>
</html>
