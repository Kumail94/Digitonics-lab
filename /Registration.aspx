﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="BrownGirlsCodeUpdated.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Login V16</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>

<style>
     
.active_set {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    flex-direction: row-reverse;
    margin-left: 42px;
}
.active_set  label {
    margin-left:29px;
    }

</</style>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50" style="width: 1000px;">
				<span class="login100-form-title p-b-41">
					Account Registration
				</span>
				<form runat="server" class="login100-form validate-form p-b-33 p-t-5" style="width: 1000px;">

                    <div class="wrap-input100 validate-input" data-validate = "Enter firstname">
					<input class="input100" runat="server" type="text" name="firstname"  placeholder="First name" id="txtfirstname">
                        <%--  <asp:TextBox CssClass="input100" runat="server" placeholder="User name" ID="txtuser"></asp:TextBox>--%>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                    </div>

                       <div class="wrap-input100 validate-input" data-validate = "Enter lastname">
					<input class="input100" runat="server" type="text" name="lastname"  placeholder="Last name" id="txtlastname">
                           <%--  <asp:TextBox CssClass="input100" runat="server" placeholder="User name" ID="txtuser"></asp:TextBox>--%>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                    </div>


					<div class="wrap-input100 validate-input" data-validate = "Enter username">
					<input class="input100" runat="server" type="text" name="name"  placeholder="User name" id="txtusername">
                        <%--  <asp:TextBox CssClass="input100" runat="server" placeholder="User name" ID="txtuser"></asp:TextBox>--%>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                    </div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" runat="server" name="pass" placeholder="Password" id="txtpwd">
						<%--<asp:TextBox CssClass="input100" runat="server" placeholder="User name" ID="txtpwd" TextMode="Password"></asp:TextBox>--%>
                        <span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

                    <div class="wrap-input100 validate-input" data-validate="Enter email">
						<input class="input100" type="email" runat="server" name="email" placeholder="Email" id="txtemail">
						<%--<asp:TextBox CssClass="input100" runat="server" placeholder="User name" ID="txtpwd" TextMode="Password"></asp:TextBox>--%>
                        <span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

                   	<div class="form-group active_set">
						<asp:CheckBox ID="CheckBox" runat="server" Text="Active" TextAlign="Left" />
					</div>                  

					<div class="container-login100-form-btn m-t-32">
                        <%--<button class="login100-form-btn" runat="server" id="btnLogin">
							Login
						</button>--%>
                        <asp:Button ID="btnSubmit" class="login100-form-btn" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
					</div>

				</form>



			</div>
		</div>
	</div>
	
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
