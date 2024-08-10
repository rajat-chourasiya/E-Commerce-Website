<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MyEShoppingWebsite.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
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
                <li><a href="Signup.aspx">SignUp</a></li>
                <li class="active"><a href ="SignIn.aspx">SignIn</a></li>

            </ul>
        </div>
       
    </div>
</div>
              
</div>
            </div>
        <hr />
        <hr />
        <hr />
         
        <!-------------------------Sign in Form Start----------------------------------------->
        <div class="container">
            <div class="form-horizontal">
                <h2>Login Form</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="UserName"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="Enter Your UserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" CssClass="text-danger" runat="server" ErrorMessage="Please Enter Username" ControlToValidate="txtUsername" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

        <div class="form-horizontal">
            
                <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="PassWord"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPass" CssClass="form-control" placeholder="Enter Your Password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtPass" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
        </div>
            
            <div class="form-horizontal">
                 <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                      <asp:CheckBox ID="CheckBox1" runat="server" />   
                        <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>
            </div>

            <div class="form-horizontal">
                
                 <div class="form-group">
                    <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnLogin" OnClick="btnLogin_Click" CssClass="btn btn-success" runat="server" Text="Login &raquo;" />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Signup.aspx">Sign Up</asp:HyperLink>
                        </div>
                  </div>
            </div>

             <div class="form-group">
                    <div class="col-md-2"></div>
                        <div class="col-md-6">
                         
                            <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                    </div>
                </div>

             <div class="form-group">
                <div class="col-md-2"></div>
                    <div class="col-md-6">
                     <asp:Label ID="lblError" CssClass="text-danger" runat="server" Text=""></asp:Label>
                </div>
            </div>

        </div>
        

          <hr />  
<footer class="footer-pos">
    <div class="container">
        <p class="pull-right "><a href="#">Back to Top</a></p>
        <p>&copy;2024 rajatchourasiya.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href="#"> About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a></p>
    </div>
</footer>
    </form>
</body>
</html>
