<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyEShoppingWebsite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>

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
                            <li><a href="Signup.aspx">SignUp</a></li>
                            <li><a href="SignIn.aspx">SignIn</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!----------image slider-------------->
            <div class="container">
                  <h2>Carousel Example</h2>  
                  <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                      <li data-target="#myCarousel" data-slide-to="1"></li>
                      <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                          <img src="image slider/Ecommerse6.png" alt="Chicago" style="width:100%; ">
                        </div>
                        <div class="carousel-caption">
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
                        </div>    
                      <div class="item">
                        <img src="image slider/Ecommerce5.jpg" alt="New york" style="width:100%;">
                      </div>
                        <div class="item">
                          <img src="image slider/Ecommerse4.png" alt="New york" style="width:100%;">
                        </div>
                        <div class="item">
                          <img src="image slider/E-commerse2.png" alt="New york" style="width:100%;">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                      <span class="glyphicon glyphicon-chevron-left"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                      <span class="glyphicon glyphicon-chevron-right"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
            <!--------------------image slider End------------------------>
        </div>
             <!--------------------Middle Contents Start------------------------>
                <hr />
                <div class="container center">
                    <div class="row">
                        <div class="col-lg-4">
                            <img class="img-circle" src="image slider/iphone.jpg" alt="thumb" width="140" height="140" />
                            <h2>iPhone 11</h2>
                            <p>Starting at INR 64,900</p>
                            <p><a class="btn btn-default" href="" role="button">View More &raquo; </a></p>
                        </div>
                        <div class="col-lg-4">
                            <img class="img-circle" src="image slider/shoes.jpeg" alt="thumb" width="140" height="140" />
                            <h2>Footwear</h2>
                            <p>Starting at INR 600</p>
                            <p><a class="btn btn-default" href="" role="button">View More &raquo; </a></p>
                        </div>
                        <div class="col-lg-4">
                            <img class="img-circle" src="image slider/cloth.jpg" alt="thumb" width="140" height="140" />
                            <h2>Clothings</h2>
                            <p>Starting at INR 300</p>
                            <p><a class="btn btn-default" href="" role="button">View More &raquo; </a></p>
                        </div>

                    </div>
                </div>
        <!----------------------------Middle Contents Ends---------------------------------------------->
        <!----------------------------footer Start---------------------------------------------->
        
        <footer>
            <div class="container">
                <p class="pull-right "><a href="#">Back to Top</a></p>
                <p>&copy;2024 rajatchourasiya.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href="#"> About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a></p>
            </div>
        </footer>

    </form>
     

</body>
</html>
