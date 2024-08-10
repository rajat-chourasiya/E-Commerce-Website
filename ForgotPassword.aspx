<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="MyEShoppingWebsite.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
            <meta charset="utf-8" />
<meta name="viewport" content="width=device-width", initial-scale="1" />
<meta http-equiv="X-UA-compatible" content="IE-edge" />
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="css/Custome.css" rel="stylesheet" />
     
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle Navigation</span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span> 
             
            </button>
            <a class="navbar-brand" href="Default.aspx"><span><img src="icons\E-Shop.jfif"  alt=" MyEShopping" height="30"/>MyEShopping</span></a>
        </div>
        <div class ="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li  ><a href ="Default.aspx">Home</a></li>
                <li  ><a href ="">About</a></li>
                <li  ><a href ="">Contact Us</a></li>
                <li  ><a href ="">Blog-</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">Men</li>
                        <li role="seperator" class="divider"></li>
                        <li><a href="#">Shirts</a></li>
                        <li><a href="#">Pants</a></li>
                        <li><a href="#">Denims</a></li>

                        <li role="seperator" class="divider"></li>
                        <li class="dropdown-header">Women</li>
                        <li role="seperator" class="divider"></li>
                        <li><a href="#">Top</a></li>
                        <li><a href="#">Leggings</a></li>
                        <li><a href="#">Denims</a></li>

                    </ul>
                </li>
                
                <li ><a href ="SignIn.aspx">SignIn</a></li>

            </ul>
        </div>
       
    </div>
</div>
            <div class="container">
                <div class="form-horizontal">
                    <h2>Recover Password</h2>
                    <hr />
                    <h3>Please Enter Your Email Address, We Will send you the recovery link for your password</h3>

                    <div class="form-group">
                        <asp:Label ID="lblEmail" CssClass="col-md-2" runat="server" Text="Enter Your Email Address"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtEmailID" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Enter your Email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    


                
                <div class="form-group">
                    <div class="col-md-2"></div>
                    
                    <div class="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Send" />
                    </div>
                </div>
        </div>
        </div>
    </form>
              <hr />  
<footer class="auto-style1">
    <div class="container">
        <p class="pull-right "><a href="#">Back to Top</a></p>
        <p>&copy;2024 rajatchourasiya.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href="#"> About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a></p>
    </div>
</footer>

</body>
</html>
