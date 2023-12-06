<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
#main-container {
    display: flex;
    position: relative;
    justify-content: center;
    align-items: center;
    height: 100%;
    width: 100%;
}

#form-container {
    width: 350px;
    display: flex;
    position: relative;
}

#form-container::before {
    border-radius: 50%;
    content: '';
    height: 30px;
    top: 18px;
    width: 30px;
    position: absolute;
    background: #f3e125;
    box-shadow: 20px 0px 50px 40px #f3e125;
    animation: floating 3s ease-in-out infinite alternate;
}

#form-container::after {
    border-radius: 50%;
    content: '';
    height: 30px;
    width: 30px;
    right: 0;
    box-shadow: -20px 0px 50px 40px #29b4ff;
    background: #29b4ff;
    bottom: 18px;
    position: absolute;
    z-index: -1;
    animation: floating 3s ease-in-out infinite alternate;
}

input:focus {
    outline: none;
}


#content {
    font-size: 2rem;
    border: 1px solid #626262c2;
    padding: 1.5rem;
    width: 100%;
    border-radius: 15px;
    background: #62626212;
    backdrop-filter: blur(30px);
    font-family: calibri;
}

.title-text {
    display: block;
    text-align: center;
    color: white;
}

.field {
    position: relative;
}

.field label {
    position: absolute;
    bottom: 0;
    margin-bottom: 5px;
    z-index: -1;
    transition: .4s;
}

.field input {
    color: white;
    border: none;
    border-bottom: 1px solid #3f3f3f;
    background: none;
    padding: 5px 0;
    margin-top: 32px;
    width: 100%;
}

.field input:focus+label,
.field input:valid+label {
    bottom: 25px;
    font-size: 13px;
}

#action {
    display: flex;
    justify-content: space-between;
    margin: 10px 0 30px;
}

label {
    font-size: 14px;
    display: flex;
    color: #d0d0d0;
    cursor: pointer;
}

label input {
    margin-right: 3px;
    cursor: pointer;
}

#forget,
#signup a {
    text-decoration: none;
    color: white;
    font-size: 14px;
}

#forget:hover,
#signup a:hover {
    color: rgb(186, 186, 186)
}

input[type=submit] {
    padding: 6px 18px;
    border-radius: 30px;
    font-weight: bold;
    width: 100%;
    border: none;
    font-size: 1rem;
    cursor: pointer;
    background: #ffffff;
    transition: .3s;
}

input[type=submit]:hover {
    transform: scale(0.9);
}

#signup {
    color: #bcbcbc;
    font-size: 14px;
    text-align: center;
    margin-top: 25px;
}

@keyframes floating {
    from {
        transform: scale(0.7);
    }

    to {
        transform: scale(1);
    }
}

body{
background-color:black;
  margin:250;
  position: absolute;
 
  -ms-transform: translateY(10%);
  transform: translateY(70%);
  height: 200px;
  position: relative;
}

</style>
</head>
<body>

<div id="main-container">
    <div id="form-container">
        <div id="content">
            <span class="title-text">Login</span>
            <form id="login-form" name="fn" action="log">
                <div class="field">
                    <input  readonly="readonly" value="" type="number" name="id" >
                    <label></label>
                </div>
                <div class="field">
                    <input  required="" type="text" name="username">
                    <label>Username</label>
                </div>
                <div class="field">
                    <input required="" type="password" name="password">
                    <label>Password</label>
                </div>
                <div id="action">
                    <label><input type="checkbox">Remember me</label>
                    <a id="forget" href="forget">Forgot password?</a>
                </div>
                <input type="submit" value="Login"  onclick="login()">
                <div id="signup">Don't have an Account<a href="front">?</a>
                    <a href="signup">Sign up</a>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
function login() {
  alert("Login Successful");
  
}
</script>
</body>
</html>


