<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
    
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <h2 style="text-align: center; font-size: 1.3rem; color: rgb(74, 74, 74); padding-bottom: 10px; padding-top: 23px;"><u>Admin Login</u></h2>
    <div class="container">
          <div class="img">
               <img src="/images/adminlogin.jpg" alt="adminloginimg" style=" width: 560px; height: 480px; margin-left: 10px; border-radius: 22px;">
     </div>
    	
    <div class="signup-container">
        <form method="post" action="checkadminlogin">
            <h3 style="font-size: 23px; margin: 16px;">Glad you're back!</h3>
            <h4 align="center" style="color:red; margin: 20px;">
              <c:out value="${message}"></c:out>
            </h4>
                <div class="div">
                         <label for="auname">Enter Username</label>
                         <input type="text" id="auname" name="auname" class="input" required/>
                    </div>
                    <div class="div">
                         <label for="apwd">Enter Password </label>
                         <input type="password" id="apwd" name="apwd" class="input" required/>
                    </div>
                    <br />
                <input type="checkbox" id="rememberme" name="rememberme">
                <label>Remember Me</label>
                <label id="forgotpassword"><a href="forgotpassword.html">Forgot password?</a></label>
                <br />
                        <input type="submit" value="Login" class="btn"/>
                        <input type="reset" value="Clear" class="btn"/>
             <p style="padding-bottom: 36px;"> Have'nt registered yet? <a href="stureg">Sign Up</a></p>
        </form>
    </div> 
</div>  
</body>
</html>
