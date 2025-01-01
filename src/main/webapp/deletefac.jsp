<%@page import="com.klef.jfsd.project.model.Admin"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
    <title>Delete Faculty</title>
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
    <style>
           table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }
    </style>
</head>
<body>
     <%@include file="adminnavbar.jsp" %>
     <div class="rig-conttt">
  
    <h3 style="margin-left: 680px; margin-bottom: 40px;"><u>Delete Faculty</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${faclist}" var="fac">
            <tr>
                <td><c:out value="${fac.id}"/></td>
                <td><c:out value="${fac.name}"/></td>
                <td><c:out value="${fac.gender}"/></td>
                <td><c:out value="${fac.dateofbirth}"/></td>
                <td><c:out value="${fac.department}"/></td>
                <td><c:out value="${fac.location}"/></td>
                <td><c:out value="${fac.email}"/></td>
                <td><c:out value="${fac.contact}"/></td>
                <td><c:out value="${fac.status}"/></td>
           
           <td>
             <a href='<c:url value="delete?id=${fac.id}"></c:url>'>Delete</a>
           </td>

            </tr>
        </c:forEach>
    </table>
    </div>
</body>
</html>
