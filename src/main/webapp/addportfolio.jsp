<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@page import="com.klef.jfsd.project.model.Student"%>
    <%
    Student stu = (Student) session.getAttribute("student");
    if(stu==null)
    {
    	response.sendRedirect("stusessionexpiry");
    	return;
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Upload Project</title>
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
</head>
<body>

<%@ include file="stunavbar.jsp" %> <!-- Include your navbar -->
<div class="rig-contttt">
    <h3 style="margin-left: 300px; margin-bottom: 40px;"><u>Upload Portfolio</u></h3>
<br>

<div class="form-container"  style="height: 180px; padding-right: 40px;">
        <form method="post" action="insertportfolio" enctype="multipart/form-data">
            <table>
                        <!-- Student ID (hidden) -->
        <input type="hidden" name="studentId" value="${student.id}" />
                <tr>
                    <td><label for="role">Role</label></td>
                    <td><input type="text" id="role" name="role" required/></td>
                </tr>
                <tr>
                    <td><label for="skills">Skills</label></td>
                    <td><input type="text" id="skills" name="skills" required/></td>
                </tr>
                <tr>
                    <td><label for="file">Upload Portfolio (PDF/Doc)</label></td>
                    <td><input type="file" id="file" name="file" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Upload" id="sub"/>
                        <input type="reset" value="Clear" id="clea"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
  </div>
</body>
</html>
