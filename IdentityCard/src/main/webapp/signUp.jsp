<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Registration</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
     <script type="text/javascript">
function fun() {
  alert("Done")
  document.fn.action="sign";
  document.fn.submit();
}
</script>
    <style>
   body{
  background-color:black;
  margin:250;
  position: absolute;
 
  -ms-transform: translateY(10%);
  transform: translateY(70%);
  height: 400px;
  position: relative;
}

.center{
 position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 29vw;
  background: white;
  border-radius: 10px;
}

.center h1{
  text-align: center;
  padding: 0 0 20px 0;
  border-bottom: 1px solid silver;
}

.center form{
  padding: 0 40px;
  box-sizing: border-box;
}

form .txt_field{
  position: relative;
  border-bottom: 2px solid #adadad;
  margin: 30px 0;
}

.txt_field input{
  width: 100%;
  padding: 0 5px;
  height: 40px;
  font-size: 16px;
  border: none;
  background: none;
  outline: none;
}

.txt_field label{
  position: absolute;
  top: 50%;
  left: 5px;
  color: #adadad;
  transform: translateY(-50%);
  font-size: 16px;
  pointer-events: none;
}

.txt_field span::before{
  content: '';
  position: absolute;
  top: 40px;
  left: 0;
  width: 0px;
  height: 2px;
  background: #2691d9;
  transition: .5s;
}

.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
  top: -5px;
  color: #2691d9;
}

.txt_field input:focus ~ span::before,
.txt_field input:Valid ~ span::before{
  width: 100%;
}

.pass{
  margin: -5px 0 20px 5px;
  color: #a6a6a6;
  cursor: pointer;
}

.pass:hover{
  text-decoration: underline;
}

input[type="submit"]{
  width: 100%;
  height: 50px;
  border: 1px solid;
  border-radius: 25px;
  font-size: 18px;
  font-weight: 700;
  cursor: pointer;

}

input[type="submit"]:hover{
  background: #2691d9;
  color: #e9f4fb;
  transition: .5s;
}

.signup_link{
  margin: 30px 0;
  text-align: center;
  font-size: 16px;
  color: #666666;
}

.signup_link a{
  color: #2691d9;
  text-decoration: none;
}

.signup_link a:hover{
  text-decoration: underline;
}

.HomeAbout{
  width: 100vw;
  height: 25vh;
}
    </style>
  </head>
  <body>
    <div class="container" name="fn">
      <div class="center">
          <h1>Register</h1>
          <form  action="sign" method="post">
          		<div class="txt_field">
                  <input type="number" name="id" readonly="readonly" value="511" >
                  <span></span>
                  <label></label>
              </div>
              <div class="txt_field">
                  <input type="text" name="sname" required>
                  <span></span>
                  <label>Name</label>
              </div>
               <div class="txt_field">
                  <input type="date" name="expiry" required>
                  <span></span>
                  <label></label>
              </div>
              <div class="txt_field">
                  <input type="text" name="addr" required>
                  <span></span>
                  <label>Address</label>
              </div>
               <div class="txt_field">
                  <input type="number" name="mobno" required>
                  <span></span>
                  <label>Phone</label>
              </div>
               <div class="txt_field">
                  <input type="text" name="adhar" required>
                  <span></span>
                  <label>Adhar Number</label>
              </div>
              <div class="txt_field">
                  <input type="text" name="username" required>
                  <span></span>
                  <label>Username</label>
              </div>
              <div class="txt_field">
                  <input type="password" name="password" required>
                  <span></span>
                  <label>Password</label>
              </div>
              <input  type="submit" value="Sign Up" >
              <div class="signup_link">
                  Have an Account ? <a href="here">Login Here</a>
              </div>
          </form>
      </div>
  </div>
 
  </body>
</html>