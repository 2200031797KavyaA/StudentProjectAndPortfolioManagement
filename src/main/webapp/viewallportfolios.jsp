<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Portfolios</title>
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
    <style>
        table {
            width: 95%;
            border-collapse: collapse;
            margin: 25px;
            font-size: 18px;
            text-align: left;
        }
        th, td {
            padding: 20px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<%@ include file="facnavbar.jsp" %>
<div class="rig-conttt">
<h2 align="center"><u>All Portfolios</u></h2>
<br>
    <table>
        <tr>
            <th>Portfolio ID</th>
            <th>Role</th>
            <th>Skills</th>
            <th>File</th>
        </tr>
        <c:forEach items="${portfoliolist}" var="portfolio">
            <tr>
                <td><c:out value="${portfolio.id}"/></td>
                <td><c:out value="${portfolio.role}"/></td>
                <td><c:out value="${portfolio.skills}"/></td>
                <td>
    <c:choose>
        <c:when test="${not empty portfolio.file}">
            <a href='<c:url value="displayfile?id=${portfolio.id}"/>' target="_blank" class="btn">View</a>
        </c:when>
        <c:otherwise>
            No file uploaded
        </c:otherwise>
    </c:choose>
</td>
            </tr>
        </c:forEach>
    </table>
    </div>
</body>
</html>
