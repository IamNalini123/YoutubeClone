<%@ Page Language="C#" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default"%>
<%--<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>--%>
<html>
<%--<link rel="stylesheet" href="style.css">--%>
	<body>
	<style>
		@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap");
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

body {
	overflow: hidden;
}

section {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background-color: #fff;
}

section .color {
	position: absolute;
	filter: blur(150px);
}

section .color:nth-child(1) {
	top: -350px;
	width: 600px;
	height: 600px;
	background: #ff359b;
	/*pink*/
}

section .color:nth-child(2) {
	bottom: -150px;
	width: 600px;
	height: 600px;
	background: #fffd87;
	/*yellow*/
}

section .color:nth-child(3) {
	bottom: 50px;
	width: 300px;
	height: 300px;
	background: #00d2ff;
	/*blue*/
}

.box {
	position: relative;
}

.box .square {
	position: absolute;
	backdrop-filter: blur(5px);
	box-shadow: 0 25px 45px rgba(0, 0, 0, 0.1);
	border: 1px solid rgba(255, 255, 255, 0.5);
	border-right: 1px solid rgba(255, 255, 255, 0.2);
	border-bottom: 1px solid rgba(255, 255, 255, 0.2);
	background: rgba(255, 255, 255, 0.1);
	border-radius: 10px;
	animation: animate 10s linear infinite;
	animation-delay: calc(-1s * var(--i));
}

@keyframes animate {
	0%,
	100% {
		transform: translateY(-40px);
	}
	50% {
		transform: translateY(40px);
	}
}
.box .square:nth-child(1) {
	top: -50px;
	right: -60px;
	width: 100px;
	height: 100px;
}

.box .square:nth-child(2) {
	top: 150px;
	left: -100px;
	width: 120px;
	height: 120px;
	z-index: 2;
}

.box .square:nth-child(3) {
	bottom: -40px;
	right: -40px;
	width: 70px;
	height: 70px;
	z-index: 0;
}

.box .square:nth-child(4) {
	bottom: -60px;
	left: 40px;
	width: 50px;
	height: 50px;
	z-index: 2;
}

.box .square:nth-child(5) {
	top: -50px;
	left: 120px;
	width: 50px;
	height: 50px;
	z-index: 0;
}

.container {
	position: relative;
	width: 400px;
	height: 439px;
	background: rgba(255, 255, 255, 0.1);
	border-radius: 10px;
	display: flex;
	justify-content: center;
	align-items: center;
	backdrop-filter: blur(5px);
	box-shadow: 0 25px 45px rgba(0, 0, 0, 0.1);
	border: 1px solid rgba(255, 255, 255, 0.5);
	border-right: 1px solid rgba(255, 255, 255, 0.2);
	border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}

.form {
	position: relative;
	width: 100%;
	height: 100%;
	padding: 40px;
}

.form h2 {
	text-align : center;
	position: relative;
	color: #000000;
	font-size: 24px;
	font-weight: 600;
	letter-spacing: 1px;
	margin-bottom: 40px;
}

.form h2::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: -10px;
	width: 80px;
	height: 4px;
	background: #fff;
}

.form .inputBox {
	width: 100%;
	margin-top: 20px;
}

.form .inputBox input {
	margin-bottom: 10px;
	width: 100%;
	background: rgba(255, 255, 255, 0.2);
	outline: none;
	padding: 10px 20px;
	border-radius: 35px;
	border: 1px solid rgba(255, 255, 255, 0.5);
	border-right: 1px solid rgba(255, 255, 255, 0.2);
	border-bottom: 1px solid rgba(255, 255, 255, 0.2);
	font-size: 16px;
	letter-spacing: 1px;
	color: #000000;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
}

.form .inputBox input[type="submit"] {
	background: #0094ff;
	color: #fff;
	max-width: 100px;
	cursor: pointer;
	margin-bottom: 20px;
	font-weight: 600;
}

.forget {
	margin-top: 5px;
	color: #000000;
}

.forget a {
	color: #0026ff;
	font-weight: 600;
}


	</style>
	<section>

			<div class="container">
				<div class="form">
<img src="http://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=http%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2015%2F10%2Fnexus2cee_Search-Thumb-150x150.png&w=150&h=150&zc=3" align="center" height="60" width="60">

					<h2>Google Login</h2>
					<form name="Login" method="post" runat="server" >
						<div class="inputBox">
							<input type="text" placeholder="Username">

							<input type="password" placeholder="Password">
							<div class="inputBox">
							<asp:button ID="Button2" class="button" runat="server" OnClick="check_login2"  Text="Login"/>
								<p class="forget">Don't have an account?
									<a href="Signup.aspx">Sign up</a>
								</p>
							</div>
						</div>
					</form>

				</div>
			</div>
		
	</section>
</body>
    
</html>

