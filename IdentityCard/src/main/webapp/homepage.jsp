<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Madmax on Fire!</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');  
 *{  
  margin: 0;  
  padding: 0;  
  box-sizing: border-box;  
  font-family: "Poppins" , sans-serif;  
 }  
 body{  
  min-height: 100vh;  
  width: 100%;  
  background: black ;  
 }  
 footer{  
  position: fixed;  
  background: black;  
  width: 100%;  
  bottom: 0;  
  left: 0;  
 }  
 footer::before{  
  content: '';  
  position: absolute;  
  left: 0;  
  top: 100px;  
  height: 1px;  
  width: 100%;  
  background: #fff;  
 }  
 footer .content{  
  max-width: 1250px;  
  margin: auto;  
  padding: 30px 40px 40px 40px;  
 }  
 footer .content .top{  
  display: flex;  
  align-items: center;  
  justify-content: space-between;  
  margin-bottom: 50px;  
 }  
 .content .top .logo-details{  
  color: #fff;  
  font-size: 30px;  
 }  
 .content .top .logo-details:hover{  
  color: #000;  
  cursor: pointer;  
 }
.content .top .media-icons{  
  display: flex;  
 }  
 .content .top .media-icons a{  
  height: 40px;  
  width: 40px;  
  margin: 0 8px;  
  border-radius: 50%;  
  text-align: center;  
  line-height: 40px;  
  color: #fff;  
  font-size: 17px;  
  text-decoration: none;  
  transition: all 0.4s ease;  
 }  
 .top .media-icons a:nth-child(1){  
  background: #4267B2;  
 }  
 .top .media-icons a:nth-child(1):hover{  
  color: #4267B2;  
  background: #fff;  
 }  
 .top .media-icons a:nth-child(2){  
  background: #1DA1F2;  
 }  
 .top .media-icons a:nth-child(2):hover{  
  color: #1DA1F2;  
  background: #fff;  
 }  
 .top .media-icons a:nth-child(3){  
  background: #E1306C;  
 }  
 .top .media-icons a:nth-child(3):hover{  
  color: #E1306C;  
  background: #fff;  
 }  
 .top .media-icons a:nth-child(4){  
  background: #0077B5;  
 }  
 .top .media-icons a:nth-child(4):hover{  
  color: #0077B5;  
  background: #fff;  
 }  
 .top .media-icons a:nth-child(5){  
  background: #FF0000;  
 }  
 .top .media-icons a:nth-child(5):hover{  
  color: #FF0000;  
  background: #fff;  
 }  
 footer .content .link-boxes{  
  width: 100%;  
  display: flex;  
  justify-content: space-between;  
 }  
 footer .content .link-boxes .box{  
  width: calc(100% / 5 - 10px);  
 }  
 .content .link-boxes .box .link_name{  
  color: #fff;  
  font-size: 18px;  
  font-weight: 400;  
  margin-bottom: 10px;  
  position: relative;  
 }  
 .link-boxes .box .link_name::before{  
  content: '';  
  position: absolute;  
  left: 0;  
  bottom: -2px;  
  height: 2px;  
  width: 35px;  
  background: #fff;  
 }  
 .content .link-boxes .box li{  
  margin: 6px 0;  
  list-style: none;  
 }  
 .content .link-boxes .box li a{  
  color: #fff;  
  font-size: 14px;  
  font-weight: 400;  
  text-decoration: none;  
  opacity: 0.8;  
  transition: all 0.4s ease  
 }  
 .content .link-boxes .box li a:hover{  
  opacity: 2;  
  text-decoration: none;  
 }  
 .content .link-boxes .input-box{  
  margin-right: 55px;  
 }  
 .link-boxes .input-box input{  
  height: 40px;  
  width: calc(100% + 55px);  
  outline: none;  
  border: 2px solid #AFAFB6;  
  background: #140B5C;  
  border-radius: 4px;  
  padding: 0 15px;  
  font-size: 15px;  
  color: #fff;  
  margin-top: 5px;  
 }  
 .link-boxes .input-box input::placeholder{  
  color: #AFAFB6;  
  font-size: 16px;  
 }  
 .link-boxes .input-box input[type="button"]{  
  background: #fff;  
  color: #140B5C;  
  border: none;  
  font-size: 18px;  
  font-weight: 500;  
  margin: 4px 0;  
  opacity: 0.8;  
  cursor: pointer;  
  transition: all 0.4s ease;  
 }  
 .input-box input[type="button"]:hover{  
  opacity: 1;  
 }  
 footer .bottom-details{  
  width: 100%;  
 background: #2c303a;  
 }  
 footer .bottom-details .bottom_text{  
  max-width: 1250px;  
  margin: auto;  
  padding: 20px 40px;  
  display: flex;  
  justify-content: space-between;  
 }  
 .bottom-details .bottom_text span,  
 .bottom-details .bottom_text a{  
  font-size: 14px;  
  font-weight: 300;  
  color: #fff;  
  opacity: 0.8;  
  text-decoration: none;  
 }  
 .bottom-details .bottom_text a:hover{  
  opacity: 1;  
  text-decoration: underline;  
 }  
 .bottom-details .bottom_text a{  
  margin-right: 10px;  
 }

                 /*Media query*/


@media (max-width: 900px) {  
  footer .content .link-boxes{  
   flex-wrap: wrap;  
  }  
  footer .content .link-boxes .input-box{  
   width: 40%;  
   margin-top: 10px;  
  }  
 }  
 @media (max-width: 700px){  
  footer{  
   position: relative;  
  }  
  .content .top .logo-details{  
   font-size: 26px;  
  }  
  .content .top .media-icons a{  
   height: 35px;  
   width: 35px;  
   font-size: 14px;  
   line-height: 35px;  
  }  
  footer .content .link-boxes .box{  
   width: calc(100% / 3 - 10px);  
  }  
  footer .content .link-boxes .input-box{  
   width: 60%;  
  }  
  .bottom-details .bottom_text span,  
  .bottom-details .bottom_text a{  
   font-size: 12px;  
  }  
 }
 @media (max-width: 520px){  
  footer::before{  
   top: 145px;  
  }  
  footer .content .top{  
   flex-direction: column;  
  }  
  .content .top .media-icons{  
   margin-top: 16px;  
  }  
  footer .content .link-boxes .box{  
   width: calc(100% / 2 - 10px);  
  }  
  footer .content .link-boxes .input-box{  
   width: 100%;  
  }  
 }
  header {
            background-color: black;
            color: #fff;
            text-align: center;
            padding: 1em;
        }
        
 nav {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 0.5em;
        }
        nav a {
            text-decoration: none;
            color: #fff;
            margin: 0 1em;
        }
        
        section {
            padding: 2em;
            text-align: center;
        }
        
         .about {
            background-color: black;
        }

	p{
		color: white;
		}

		h3, marquee {
              
                background: white;
                color: black;
                
            }
            .blink {
                animation: blinker 1.5s linear infinite;
                color: red;
                font-family: sans-serif;
            }
            @keyframes blinker {
                50% {
                    opacity: 0;
                }
            } 
      

        
</style>

</head>
<body>
 <header>
        <h1>Welcome to MODERN WORLD!</h1>
    </header>
    
     <nav>
        <a href="page">Home</a>
        <a href="stulog">Check-Status</a>
        <a href="admlog">Admin</a>
         <a href="help">Help</a>
    </nav>

	<section id="about" class="about">
	<marquee direction="right" scrollamount="10" >
        <h3>LET'S BUILD THE IDENTITY</h3></marquee>
        <p>We are a passionate team dedicated to creating amazing web experiences for our clients.</p>
   
        <p>IDENTITY CARD</p>
        <p>AADHAR CARD</p>
        <p>PAN CARD</p>
         </section>    
<footer>  
     <div class="content">  
       <div class="top">  
         <div class="logo-details">  
       <a href="madmax">    <span class="logo_name">MADMAX</span>  </a>
         </div>  
         <div class="media-icons">
           <a href="#"><i class="fa fa-facebook"></i></a>  
           <a href="#"><i class="fa fa-twitter"></i></a>  
           <a href="#"><i class="fa fa-instagram"></i></a>  
           <a href="#"><i class="fa fa-linkedin"></i></a>  
           <a href="#"><i class="fa fa-youtube"></i></a>
         </div>  
       </div>  
       <div class="link-boxes">  
         
         <ul class="box">  
           <li class="link_name">Services</li>
           <li><a href="#">App Design</a></li>  
           <li><a href="#">Web Design</a></li>  
           <li><a href="#">Photo Editing</a></li>  
           <li><a href="#">Graphic Design</a></li>
         </ul>  
     <ul class="box">  
           <li class="link_name">Other services</li>
       <li><a href="#">SEO</a></li>  
           <li><a href="#">Content Marketing</a></li>  
           <li><a href="#">Digital Marketing</a></li>  
           <li><a href="#">Social Media</a></li>
         </ul>  
         <ul class="box">  
           <li class="link_name">Contact</li>
           <li><a href="#">+511 777551</a></li>  
           <li><a href="#">+511 552255</a></li>  
           <li><a href="https://www.codewithrandom.com/">ASPPP@cjc.com</a></li>
         </ul>  

       </div>  
     </div>  
     </div>  
		 <p>&copy; 511 Identity Application</p>
   </footer>  
</body>
</html>

