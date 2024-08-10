<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="MyEShoppingWebsite.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>
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
   
                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-default navbar-btn" NavigateUrl="~/SignIn.aspx">Signout</asp:HyperLink>
                 
             </ul>
         </div>
     </div>
   </div>
        </div>
        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
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
