<%@page import="com.klef.jfsd.project.model.Admin"%>

    <%
 Admin admin =(Admin) session.getAttribute("admin");
if(admin==null)
{
	response.sendRedirect("adminsessionexpiry");
	return;
}
%><!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
</head>
<body>
  <%@include file="adminsnavbar.jsp" %>
  <div class="rig-contt">
    <h3 style="margin-left: 300px; margin-bottom: 40px;"><u>Student Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertstu">
            <table>
               <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdob" name="sdob" required/></td>
                </tr>
                <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE">CSE</option>
                            <option value="CSIT">EEE</option>
                            <option value="ECE">ECE</option>
                            <option value="ECS">ECS</option>
                            <option value="EEE">EEE</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                 <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register" id="sub"/>
                        <input type="reset" value="Clear" id="clea"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    </div>
</body>
</html>
