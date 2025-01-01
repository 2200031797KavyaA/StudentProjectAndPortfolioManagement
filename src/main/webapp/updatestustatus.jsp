<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
    <title>Update Student Status</title>
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
     <%@include file="adminsnavbar.jsp" %>
     <div class="rig-conttt">
    <h3 style="margin-left: 680px; margin-bottom: 40px;"><u>Update Student Status</u></h3>
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
        <c:forEach items="${stulist}" var="stu">
            <tr>
                <td><c:out value="${stu.id}"/></td>
                <td><c:out value="${stu.name}"/></td>
                <td><c:out value="${stu.gender}"/></td>
                <td><c:out value="${stu.dateofbirth}"/></td>
                <td><c:out value="${stu.department}"/></td>
                <td><c:out value="${stu.location}"/></td>
                <td><c:out value="${stu.email}"/></td>
                <td><c:out value="${stu.contact}"/></td>
                <td><c:out value="${stu.status}"/></td>
           
           <td>
       
       <a href='<c:url value="updatesstatus?id=${stu.id}&status=Accepted"></c:url>'>Accept</a>
       <a href='<c:url value="updatesstatus?id=${stu.id}&status=Rejected"></c:url>'>Reject</a>
         
           </td>

            </tr>
        </c:forEach>
    </table>
    </div>
</body>
</html>
