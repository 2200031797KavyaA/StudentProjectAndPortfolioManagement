<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Faculty Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center; margin: 40px;"><u>Faculty Login</u></h3>
    
    <h4 align="center" style="color:red; margin: 20px;">
    <c:out value="${message}"></c:out>
    </h4>
    <div class="form">
        <form method="post" action="checkfaclogin">
            <table>
                <tr>
                    <td><label for="femail">Enter Email ID</label></td>
                    <td><input type="email" id="femail" name="femail" required/></td>
                </tr>
                 <tr>
                    <td><label for="fpwd">Enter Password</label></td>
                    <td><input type="password" id="fpwd" name="fpwd" required/></td>
                </tr>
                <tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login" id="sub"/>
                        <input type="reset" value="Clear" id="clea"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
