<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="BrownGirlsCodeUpdated.UserLogin" EnableEventValidation="false" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>    <title>User Login</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
			<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
			<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
			<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
			<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
			<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
			<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
			<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
			<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
			<link rel="stylesheet" type="text/css" href="css/util.css"/>
			<link rel="stylesheet" type="text/css" href="css/main.css"/>
    <style type="text/css">
        #form1 {
            height: 285px;
        }
form#Userform {
    background: white;
    width: 38%;
    margin: 119px auto;
    padding: 47px 41px;
    box-shadow: 0 0 10px 4px black;
    border-radius: 9px;
}
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
input#UserButton {
       margin: auto;
       display:block;
       height: 43px;
    width: 133px;
}
    span#UserLabel {
     margin: auto;
    display: block;
     text-align:center;   
            }
    </style>
</head>

    <body class="login_bg" style="background-image:url('./images/bg-01.jpg')">
    	<form id="Userform" runat="server">
	    <h1>
            <asp:Label ID="UserLabel" runat="server" Font-Bold="True" Text="User Login"></asp:Label>
        </h1>
      
            <div class="wrap-input100 validate-input" data-validate = "Enter username">
                <input class="input100" runat="server" type="text" name="username"  placeholder="User name" id="usertext"/>
                <%--<asp:TextBox ID="" runat="server" Height="62px" Width="288px"></asp:TextBox>--%>
                <span class="focus-input100" data-placeholder="&#xe82a;"></span>
            </div>
         <div class="wrap-input100 validate-input" data-validate = "Enter password">
            <input class="input100" runat="server" type="password" name="password"  placeholder="Password" id="userpassword"/>
            <span class="focus-input100" data-placeholder="&#xe82a;"></span>
            </div>
              	<div class="form-group  active_set">
						<asp:CheckBox ID="CheckBox" runat="server" Text="Active" TextAlign="Left" />
				</div>  
        <asp:Button ID="UserButton" runat="server" BackColor="#FF3399" ForeColor="White" Height="57px" Text="Login" Width="169px" Font-Bold="True" OnClick="UserButton_Click" />
    </form>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script type="text/javascript">

        $("#UserButton").click(function () {
				
			    $("#usertext").prop("required", true);
			    $("#userpassword").prop("required", true);
			    $("#CheckBox").prop("required", true);
			
				
				
			});

		
    </script>



 

</body>
</html>
