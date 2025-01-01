<%@page import="com.klef.jfsd.project.model.Faculty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Faculty fac = (Faculty) session.getAttribute("faculty");
if(fac==null)
{
	response.sendRedirect("facsessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Home</title>
<link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%@include file="facnavbar.jsp" %>
<div class="rig-contt">
  <h3 style="margin-left: 300px; margin-bottom: 30px;"><u>My Profile</u></h3>

<div class="cardd">
<pre>
            <b>ID:</b><%=fac.getId()%><br>
            <b>NAME:</b><%=fac.getName()%><br>
           <b>GENDER:</b><%=fac.getGender()%><br>
           <b>DATE OF BIRTH:</b><%=fac.getDateofbirth()%><br>
           <b>DEPARTMENT:</b><%=fac.getDepartment()%><br>
           <b>LOCATION:</b><%=fac.getLocation()%><br>
           <b>EMAIL:</b><%=fac.getEmail()%><br>
           <b>CONTACT:</b><%=fac.getContact()%><br>
           <b>STATUS:</b><%=fac.getStatus()%>
           </pre>
</div>
</div>
</body>
</html>