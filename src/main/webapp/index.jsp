<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Sign In</title>
  <link rel="stylesheet" href="css/home.css" />
</head>
<body>
  <div class="loginWindow">
    <div class="loginHeader">Sign In</div>
    
    <div class="loginContent">
      <div style="display:block;padding-top:20px">Username*</div>
      
      <input type="text" id="T1" /> 
      
      <div style="display:block;padding-top:20px">Password*</div>
      
      <input type="password" id="T2" /> 
      
      <div style="display:block;padding-top:10px;padding-bottom:10px;text-align:right">
        <u><label style="color:blue; cursor:pointer;">Forgot Password</label></u>
      </div>
      
      <p id = ack> <p/>
      
      <br><br>
      
      <button class="signinButton" onclick=signIn()>Sign In</button>
      
      <br><br>
      
      <div style="text-align: center;">
        <p>Don't have an account?</p>
        <u><a class="signupLabel" onclick=signUp()>Signup</a></u>
      </div>
      
    </div>
  </div>
</body>

<script type="text/javascript" src="js/main.js"></script>


<script type="text/javascript">
	function signIn(){
		var data = JSON.stringify({
			username: T1.value,
			password: T2.value
		});
		var url = "http://localhost:8080/user/login";
		callApi("POST", url, data, getResponse);
	}
	
	function getResponse(res) {
	    if (res == "Invalid Credentials!!"){
	    	  ack.style.color = "red";
	        ack.innerHTML = "Username and Password do not match!";
	        
	      }else{
	        /*location.href = "/home"; */
	        location.replace("/home");
	      }
	 }

	function signUp(){
		location.href = "/signup";
	}

</script>
</html>