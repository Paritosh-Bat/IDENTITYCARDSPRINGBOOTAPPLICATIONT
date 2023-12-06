<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<style>
#main-container {
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
}

#card-container {
    width: 350px;
    height: 190px;
    perspective: 1000px;
    border-radius: 10px;
}

#card {
    width: 100%;
    height: 100%;
    color: white;
    transition: 1s;
    position: relative;
    border-radius: 10px;
    perspective: 1000px;
    transform-style: preserve-3d;
    font-family: calibri;
}

#front,
#back {
    width: 100%;
    height: 100%;
    overflow: hidden;
    position: absolute;
    border-radius: 10px;
    backface-visibility: hidden;
    background: linear-gradient(55deg, #0b0b0bfc 45%, rgb(25 25 25) 40%);
}

#back {
    transform: rotateY(180deg);
}

#front::after,
#front::before,
#back::after,
#back::before {
    content: '';
    width: 100%;
    height: 350px;
    position: absolute;
}

#front::before,
#back::before {
    left: -1%;
    transform: rotate(90deg);
    border-radius: 50% 95% 0% 100%;
    background: rgb(255 255 255 / 3%);
}

#front::after,
#back::after {
    height: 100%;
    right: -50%;
    top: -50%;
    border-radius: 100% 0 100% 80%;
    border: 1px solid rgb(239, 239, 239);
}

.type {
    position: relative;
    top: 10%;
    margin-left: 15px;
    font-weight: bold;
    background: linear-gradient(62deg, #ffffff 0%, #000000 100%);
    background-clip: text;
    -webkit-background-clip: text;
    color: transparent;
}

.title-text {
    position: absolute;
    right: 5%;
    top: 5%;
}

.details {
    position: relative;
    top: 35%;
    margin-left: 15px;
    font-size: 12px;
}

#hidden-number {
    margin-bottom: 10px;
}

#valid-date {
    margin-left: 15px;
}

#show-btn,
#hide-btn {
    position: absolute;
    bottom: 10%;
    left: 5%;
    border: none;
    color: white;
    cursor: pointer;
    padding: 5px 10px;
    border-radius: 20px;
    font-family: calibri;
    background: rgb(28, 28, 107);
}

.logo {
    position: absolute;
    font-size: 10px;
    width: 20%;
    height: 20%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: bold;
    bottom: 3%;
    right: 0%;
}

.logo::before,
.logo::after {
   
    position: absolute;
    width: 50%;
    aspect-ratio: 1/1;
    border-radius: 50%;
}

.logo::before {
	 content: '';
    background: black;
    left: 10%
}

.logo::after {
	  content: '';
    background:white;
    right: 10%;
}

.flipped {
    transform: rotateY(-180deg);
}

#chip {
    top: 10%;
    position: absolute;
    background: #e0ab89;
    width: 15%;
    height: 18%;
    border-radius: 5px;
    margin-left: 15px;
    display: flex;
    justify-content: center;
    align-items: center;
}

#chip span {
    position: absolute;
    background: #e0ab89;
    border: 1px solid black;
}

#chip span:nth-child(1) {
    height: 100%;
    width: 40%;
    border-top: none;
    border-bottom: none;
}

#chip span:nth-child(2) {
    height: 60%;
    width: 40%;
    left: 0;
    border-left: none;
    border-radius: 0 5px 5px 0;
}

#chip span:nth-child(3) {
    height: 60%;
    width: 40%;
    border-right: none;
    border-radius: 5px 0 0 5px;
    right: 0;
}

#chip span:nth-child(4) {
    width: 100%;
    border: none;
    border-bottom: 1px solid black;
}

#chip span:nth-child(5) {
    aspect-ratio: 1/1;
    width: 25%;
    border-radius: 2px;
}

.reflection {
    z-index: 0;
    top: -65%;
    left: -60%;
    height: 450px;
    transition: 1s;
    position: absolute;
    background: #ffffff;
    transform: rotate(60deg);
    transform-origin: 50% 50%;
    box-shadow: 0px 0px 10px 10px #ffffff;
}

.move {
    left: 155% !important;
} 

body{
background-color:white;
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
    <div id="card-container">
        <div id="card">
            <div id="front">
                <div class="reflection"></div>
                <div class="type">STUDENT</div>
                <div class="title-text">ASPPP</div>
                <div class="details">
                 
                   <!--   <input type="hidden" name="id" value="${stu.id }"><br>   -->
                       
                    
                   
                     <div class="name">${stu.sname}</div>
                    <p id="hidden-number">${stu.adhar} </p>
                </div>
                <button id="show-btn">View Student Details</button>
              <a href="front">  <div class="logo">MADMAX</div></a>
            </div>
            <div id="back">
                <div class="reflection"></div>
                <div id="chip">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
              <div class="title-text"> ASPPP</div>
                <div class="details">
                   <!--  <div class="name">${stu.sname}</div>
                    <p id="hidden-number">${stu.mobno}</p>  -->
                    <span id="cvv" > ${stu.sname}</span>
                    <span id="valid-date">  ${stu.mobno}</span><br><br><br>
                    <span id="cvv" name="id">CNO: ${stu.id}</span>
                    <span id="valid-date"> DOB:${stu.expiry}</span>
                </div>
                <button id="hide-btn">Hide Student Details</button>
               <a href="back"> <div class="logo">MADMAX</div></a>
            </div>
        </div>
    </div>
</div>


<script>
flip = () => {
    document.getElementById('card').classList.toggle('flipped')
    document.querySelector('#front .reflection').classList.toggle('move')
    document.querySelector('#back .reflection').classList.toggle('move')
}
document.getElementById('show-btn').addEventListener('click', flip)
document.getElementById('hide-btn').addEventListener('click', flip)
</script>
</body>
</html>


