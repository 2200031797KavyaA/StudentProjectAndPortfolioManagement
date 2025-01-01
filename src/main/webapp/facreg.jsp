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
  <%@include file="adminnavbar.jsp" %>
<div class="rig-contt">
    <h3 style="margin-left: 300px; margin-bottom: 40px;"><u>Faculty Registration</u></h3>
    <div class="form-container" style="height: 340px;">
        <form method="post" action="insertfac">
            <table>
               <tr>
                    <td><label for="fname">Enter Name</label></td>
                    <td><input type="text" id="fname" name="fname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="fgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="fgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="fgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="fdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="fdob" name="fdob" required/></td>
                </tr>
                <tr>
                    <td><label for="fdept">Select Department</label></td>
                    <td>
                        <select id="fdept" name="fdept" required>
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
                    <td><label for="flocation">Enter Location</label></td>
                    <td><input type="text" id="flocation" name="flocation" required/></td>
                </tr>
                <tr>
                    <td><label for="femail">Enter Email ID</label></td>
                    <td><input type="email" id="femail" name="femail" required/></td>
                </tr>
                 <tr>
                    <td><label for="fpwd">Enter Password</label></td>
                    <td><input type="password" id="fpwd" name="fpwd" required/></td>
                </tr>
                <tr>
                    <td><label for="fcontact">Enter Contact</label></td>
                    <td><input type="number" id="fcontact" name="fcontact" required/></td>
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
