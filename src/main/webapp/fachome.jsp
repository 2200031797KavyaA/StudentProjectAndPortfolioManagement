<%@page import="com.klef.jfsd.project.model.Faculty"%>
<%
 Faculty fac =(Faculty) session.getAttribute("faculty");
if(fac==null)
{
	response.sendRedirect("facsessionexpiry");
	return;
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Home</title>
<link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
</head>
<body>
<%@include file="facnavbar.jsp" %>
<div class="rig-cont">
<h2 align="center">Welcome <%=fac.getName() %></h2>
    <h2 align="center">Faculty Management - Faculty</h2>
    <img alt="Faculty Image" src="images/admin.jpg">
</div>
</body>
</html>