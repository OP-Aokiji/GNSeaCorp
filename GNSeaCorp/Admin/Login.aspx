<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GNSeaCorp.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gia Nguyen Corp</title>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <link href="../Admin/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <link href="../Admin/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--js-->
    <script src="../Admin/js/jquery-2.1.1.min.js"></script> 
    <!--icons-css-->
    <link href="../Admin/css/font-awesome.css" rel="stylesheet"> 
    <!--Google Fonts-->
    <link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
    <!--static chart-->
</head>
<body>
   
    <div class="login-page">
        <div class="login-main">  	
    	     <div class="login-head">
				    <h1>Login</h1>
			    </div>
			    <div class="login-block">
				     <form id="form1" runat="server">
                         <asp:TextBox ID="txtUserName" runat="server" placeholder="User Name" ></asp:TextBox>
					    <%--<input type="text" name="email" placeholder="Email" required="">--%>
                         <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
					    <%--<input type="password" name="password" class="lock" placeholder="Password">--%>
					    <!-- <div class="forgot-top-grids">
						    <div class="forgot-grid">
							    <ul>
								    <li>
									    <input type="checkbox" id="brand1" value="">
									    <label for="brand1"><span></span>Remember me</label>
								    </li>
							    </ul>
						    </div>
						    <div class="forgot">
							    <a href="#">Forgot password?</a>
						    </div>
						    <div class="clearfix"> </div>
					    </div> -->
                         <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
					    <%--<input type="submit" name="Sign In" value="Login">--%>	
					    <!-- <h3>Not a member?<a href="signup.html"> Sign up now</a></h3>				
					    <h2>or login with</h2>
					    <div class="login-icons">
						    <ul>
							    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
							    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
							    <li><a href="#" class="google"><i class="fa fa-google-plus"></i></a></li>						
						    </ul>
					    </div> -->
				    </form>
				    <h5><a href="../Default.aspx">Go Back to Home</a></h5>
			    </div>
          </div>
    </div>
<!--inner block end here-->
<!--copy rights start here-->
<div class="copyrights">
	 <p>© 2016 Gia Nguyen Corp</p>
</div>	
<!--COPY rights end here-->
<!--scrolling js-->
		<script src="../Admin/js/jquery.nicescroll.js"></script>
		<script src="../Admin/js/scripts.js"></script>
		<!--//scrolling js-->
<script src="../Admin/js/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>
</html>
