<%@page import="com.klef.jfsd.project.model.Student"%>
<%
 Student stu =(Student) session.getAttribute("student");
if(stu==null)
{
	response.sendRedirect("stusessionexpiry");
	return;
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
</head>
<body>
<%@include file="stunavbar.jsp" %>
<div class="rig-cont">
<h2 align="center">Welcome <%=stu.getName() %></h2>
    <h2 align="center">Student Management</h2>
    <img alt="Student Image" style="height: 400px; width: 600px; margin-left: 170px;" src="images/student.jpg">
</div>
</body>
</html>