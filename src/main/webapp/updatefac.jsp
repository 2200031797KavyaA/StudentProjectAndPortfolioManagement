<%@page import="com.klef.jfsd.project.model.Faculty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Faculty fac = (Faculty) session.getAttribute("faculty");
if(fac==null)
{
	response.sendRedirect("facsessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Faculty</title>
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
</head>
<body>
  <%@include file="facnavbar.jsp" %>
<div class="rig-contt">
   <h4 align="center" style="color:red; margin: 20px;">
  <c:out value="${message}"></c:out>
  </h4>
  
    <h3 style="margin-left: 260px; margin-bottom: 40px;"><u>Update Employee Profile</u></h3>
    <div class="form-container" style="height: 380px;">
        <form method="post" action="updatefacprofile">
            <table>
                <tr>
                    <td><label for="fid">Faculty ID</label></td>
                    <td><input type="number" id="fid" name="fid" readonly value="<%= fac.getId() %>" required/></td>
                </tr>
               <tr>
                    <td><label for="fname">Enter Name</label></td>
                    <td><input type="text" id="fname" name="fname" value="<%= fac.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="fgender" value="MALE" <%= fac.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="fgender" value="FEMALE" <%= fac.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="fgender" value="OTHERS" <%= fac.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="fdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="fdob" name="fdob" value="<%= fac.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="fdept">Select Department</label></td>
                    <td>
                        <select id="fdept" name="fdept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL" <%= fac.getDepartment().equals("TECHNICAL") ? "selected" : "" %>>Technical</option>
                            <option value="MARKETING" <%= fac.getDepartment().equals("MARKETING") ? "selected" : "" %>>Marketing</option>
                            <option value="SALES" <%= fac.getDepartment().equals("SALES") ? "selected" : "" %>>Sales</option>
                        </select>
                    </td>
                </tr>
               
                <tr>
                    <td><label for="flocation">Enter Location</label></td>
                    <td><input type="text" id="flocation" name="flocation" value="<%= fac.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="femail">Enter Email ID</label></td>
                    <td><input type="email" id="femail" name="femail" readonly value="<%= fac.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="fpwd">Enter Password</label></td>
                    <td><input type="password" id="fpwd" name="fpwd" value="<%= fac.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="fcontact">Enter Contact</label></td>
                    <td><input type="number" id="fcontact" name="fcontact" value="<%= fac.getContact() %>" required/></td>
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
