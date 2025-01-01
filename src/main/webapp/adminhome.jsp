<%@page import="com.klef.jfsd.project.model.Admin"%>
<%
 Admin admin =(Admin) session.getAttribute("admin");
if(admin==null)
{
	response.sendRedirect("adminsessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
</head>
<body style="padding:30px;">
 <h2 align="center" style="margin:20px;">Student Project And Portfolio Management Systems</h2>
 <nav style="padding-left: 80px;">
        <a href="adminnavbar.jsp">Faculty Management</a> &nbsp;
        <a href="adminsnavbar.jsp">Student Management</a> &nbsp;
        <a href="adminlogout">Logout</a> &nbsp;
</nav>
<img src = "/images/admin.png" alt = "admin image" style = "height: 400px; width: 500px; border-radius: 20px; margin-left: 470px; margin-top: 50px;" />
</body>
</html>