<%@page import="com.klef.jfsd.project.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student stu = (Student) session.getAttribute("student");
if(stu==null)
{
	response.sendRedirect("stusessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Profile</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
</head>
<body>
<%@include file="stunavbar.jsp" %>
<div class="rig-contt">
  <h3 style="margin-left: 280px; margin-bottom: 50px;"><u>My Profile</u></h3>

<div class="cardd">
<pre>
            <b>ID:</b><%=stu.getId()%><br>
            <b>NAME:</b><%=stu.getName()%><br>
           <b>GENDER:</b><%=stu.getGender()%><br>
           <b>DATE OF BIRTH:</b><%=stu.getDateofbirth()%><br>
           <b>DEPARTMENT:</b><%=stu.getDepartment()%><br>
           <b>LOCATION:</b><%=stu.getLocation()%><br>
           <b>EMAIL:</b><%=stu.getEmail()%><br>
           <b>CONTACT:</b><%=stu.getContact()%><br>
           <b>STATUS:</b><%=stu.getStatus()%>
           </pre>
</div>
</div>
</body>
</html>