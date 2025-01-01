<%@page import="com.klef.jfsd.project.model.Student"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My Projects</title>
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .projects-container {
            margin: auto;
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        td, th {
            padding: 10px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            text-decoration: none;
        }
        .button:hover {
            background-color: #45a049;
        }
        p {
            margin: 10px 0;
            text-align: center;
        }
        h3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <%@ include file="stunavbar.jsp" %> <!-- Include the navbar -->
    <div class="rig-conttt">
    <h3 style="text-align: center; margin: 30px;"><u>My Projects</u></h3>
    <table>
    <tr>
        <th>Project Number</th>
        <th>Project Name</th>
        <th>Project Description</th>
        <th>Project URL</th>
        <th>Faculty Name</th>
        <th>Feedback</th>
    </tr>
    <c:forEach items="${projectlist}" var="project">
        <tr>
            <td><c:out value="${project.projectNumber}" /></td>
            <td><c:out value="${project.name}" /></td>
            <td><c:out value="${project.description}" /></td>
            <td>
                <a href="<c:out value='${project.url}'/>" target="_blank">View Project</a>
            </td>
            <td>
                <c:out value="${project.faculty.name}" /> <!-- Assuming Faculty Name is accessible -->
            </td>
            <td>
                <c:choose>
                    <c:when test="${not empty project.feedback}">
                        <c:out value="${project.feedback}" />
                    </c:when>
                    <c:otherwise>
                        <span>No feedback yet</span>
                    </c:otherwise>
                </c:choose>
            </td>
            
        </tr>
    </c:forEach>
</table>
</div>
</body>


</html>
