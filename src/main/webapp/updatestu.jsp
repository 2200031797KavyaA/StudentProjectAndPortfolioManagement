<%@page import="com.klef.jfsd.project.model.Student"%>
<%@page import="com.klef.jfsd.project.model.Faculty"%>
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
    <title>Update Student</title>
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
</head>
<body>
  <%@include file="stunavbar.jsp" %>
<div class="rig-contt">
  <h4 align="center" style="color:red; margin: 20px;">
  <c:out value="${message}"></c:out>
  </h4>
  
    <h3 style="margin-left: 300px; margin-bottom: 40px;"><u>Update Student Profile</u></h3>
    <div class="form-container" style="height: 380px;">
        <form method="post" action="updatestuprofile">
            <table>
                <tr>
                    <td><label for="sid">Faculty ID</label></td>
                    <td><input type="number" id="sid" name="sid" readonly value="<%= stu.getId() %>" required/></td>
                </tr>
               <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" value="<%= stu.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" <%= stu.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" <%= stu.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" <%= stu.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdob" name="sdob" value="<%= stu.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL" <%= stu.getDepartment().equals("TECHNICAL") ? "selected" : "" %>>Technical</option>
                            <option value="MARKETING" <%= stu.getDepartment().equals("MARKETING") ? "selected" : "" %>>Marketing</option>
                            <option value="SALES" <%= stu.getDepartment().equals("SALES") ? "selected" : "" %>>Sales</option>
                        </select>
                    </td>
                </tr>
               
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" value="<%= stu.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" readonly value="<%= stu.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" value="<%= stu.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" value="<%= stu.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update" id="sub"/>
                        <input type="reset" value="Clear" id="clea"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    </div>
</body>
</html>
