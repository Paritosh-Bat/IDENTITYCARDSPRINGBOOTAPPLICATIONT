<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Landing page</title>

	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- google-fonts -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet">
<script type="text/javascript">
function help() {
	alert("YOUR RESPONSE IS SUBMITTED")
	document.fn.action="homepage.jsp";
	document.fn.submit();
}
	</script>

	<style>

.primary-cta {
  background: linear-gradient(to right,#ff6c26 0%,#ffa526 100%);
  color: #ffffff;
  padding: 10px 25px;
  border-radius: 50px;
  transition: 0.3s linear all;
  box-shadow: none;
  border: none;
  text-transform: uppercase;
  display: inline-block;
}
button.primary-cta:hover {
  background: linear-gradient(to right,#ff6c26 0%,#ffa526 100%);
  color: #ffffff;
}
.primary-cta:hover {
  background: #222222;
  color: #ffffff;
}
a,
a:hover,
a:focus{
  text-decoration: none;
  outline: none;
}
.dwr-left-heading,
.dwr-center-heading{
  font-size: 50px;
  text-transform: capitalize;
  position: relative;
  padding: 8px;
  margin: 0;
  font-weight: 400;

}
.dwr-left-heading:after{
  z-index: -1;
}

.dwr-left-heading span,
.dwr-center-heading span{
  position: relative;
  z-index: 99;
}


.dwr-left-heading:after,
.dwr-center-heading:after {
  position: absolute;
  content: "";
  height: 100%;
  width: 50px;
  background: linear-gradient(to right,#ff6c26 0%,#ffa526 100%);
  left: 0;
  top: 0;
}


/*====================================
=            contact-form            =
====================================*/

.contact-form__content p{
  color: #8d8f92;
  padding-top: 20px;
}

.contact-form{
  position: relative;
  padding-top: 50px;
}

.contact-form:after {
    position: absolute;
    content: "";
    background-image: url(pattern-2.png);
    background-size: cover;
    background-repeat: no-repeat;
    opacity: 0.4;
    left: 0;
    right: 0;
    width: 100%;
    height: 100%;
    top: 0;
}

.contact-form .container {
    z-index: 9999;
    position: relative;
}

.contact-form__content h3{

  font-weight: bold;

}
.contact-form__content {
  padding-bottom: 75px;
}
.contact-form__form-wrap {
  background: #fff;
  padding: 30px;
  color: #8d8f92;
}
.contact-form__form-wrap input,
.contact-form__form-wrap textarea{
  background: #eaeef1 !important;
  border: 0 !important;
  box-shadow: none !important;
  margin-bottom: 25px !important;
  
}
.contact-form__form-wrap input{
  height: 50px !important;

}
.contact-form__form-wrap label{
  text-transform: uppercase;
  font-size: 14px;
}

/*=====  End of contact-form  ======*/
	
    
	</style>
    
</head>
<body>

<!--==================================
=            contact-form            =
===================================-->

<section id="contact"  class="contact-form dwr-space">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-md-6 col-sm-12 col-xs-12">
				<div class="contact-form__content">
					<h3 class="dwr-left-heading">HELP DESK</h3>
                    <h2>Welcome to Online HelpDesk</h2>
					<p>Feel free to interact with us <br>
               Submit your Queries and You will receive your response on your provided E-mail.
                    </p>
					
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-md-6 col-sm-12 col-xs-12">
				<div class="contact-form__form-wrap">
					<form name="fn">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="uname">Your Name</label>
									<input type="text" class="form-control" id="uname" name="uname" required>
									
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="exampleInputEmail1">Your Email</label>
									<input type="email" class="form-control" id="exampleInputEmail1"  required>
									
								</div>
							</div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="uname">Your Query</label>
									<input type="text" class="form-control" id="uname" name="uname" required>
									
								</div>
							</div>
							
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<button type="submit" class="primary-cta" onclick="help()">Send Message</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<!--====  End of contact-form  ====-->

<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>