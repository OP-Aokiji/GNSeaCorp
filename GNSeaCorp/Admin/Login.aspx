<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GNSeaCorp.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Easy Admin Panel an Admin Panel Category Flat Bootstrap Responsive Website Template | Sign In :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="../Admin/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="../Admin/css/style.css" rel='stylesheet' type='text/css' />
    <!-- Graph CSS -->
    <link href="../Admin/css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <!-- lined-icons -->
    <link rel="stylesheet" href="../Admin/css/icon-font.min.css" type='text/css' />
    <!-- //lined-icons -->
    <!-- chart -->
    <script src="../Admin/js/Chart.js"></script>
    <!-- //chart -->
    <!--animate-->
    <link href="../Admin/css/animate.css" rel="stylesheet" type="text/css" media="all" />
    <script src="../Admin/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!--//end-animate-->
    <!----webfonts--->
    <link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
    <!---//webfonts--->
    <!-- Meters graphs -->
    <script src="../Admin/js/jquery-1.10.2.min.js"></script>
    <!-- Placed js at the end of the document so the pages load faster -->
</head>
<body class="sign-in-up">

    <section>
        <div id="page-wrapper" class="sign-in-wrapper">
            <div class="graphs">
                <div class="sign-in-form">
                    <div class="sign-in-form-top">
                        <p><span>Sign In to</span> <a href="index.html">Admin</a></p>
                    </div>
                    <div class="signin">
                        <form id="form1" runat="server">
                            <div class="log-input">
                                <div class="log-input-left">
                                     <asp:TextBox ID="txtUserName" CssClass="user" runat="server" placeholder="User Name"></asp:TextBox>
                                </div>
                               <%-- <span class="checkbox2">
                                    <label class="checkbox">
                                        <input type="checkbox" name="checkbox" checked=""><i> </i></label>
                                </span>--%>
                                <div class="clearfix"></div>
                            </div>
                            <div class="log-input">
                                <div class="log-input-left">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="lock" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                               <%-- <span class="checkbox2">
                                    <label class="checkbox">
                                        <input type="checkbox" name="checkbox" checked=""><i> </i></label>
                                </span>--%>
                                <div class="clearfix"></div>
                            </div>
                           <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--footer section start--> 
        <footer>
            <p>&copy 2015 Easy Admin Panel. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts.</a></p>
        </footer>
        <!--footer section end-->
    </section>
    

    <script src="../Admin/js/jquery.nicescroll.js"></script>
    <script src="../Admin/js/scripts.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../Admin/js/bootstrap.min.js"></script>
</body>
</html>
