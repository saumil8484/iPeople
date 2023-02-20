<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee Survey.aspx.cs" Inherits="Employee_Survey" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Website Title -->
    <title>Survey-iPeople</title>
    
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,700&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/magnific-popup.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!-- Favicon  -->
    <link rel="icon" href="images/iPeople Logo.jpg">
</head>
<body data-spy="scroll" data-target=".fixed-top">
    <form id="form1" runat="server">
    <!-- Preloader -->
	<div class="spinner-wrapper">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>
    <!-- end of preloader -->
    

    <!-- Navbar -->
    <nav class="navbar navbar-expand-md navbar-dark navbar-custom fixed-top">
        <!-- Text Logo - Use this if you don't have a graphic logo -->
       <a class="navbar-brand logo-text page-scroll" href="Home.aspx">iPeople</a>

        <!-- Image Logo -->
        <!--a class="navbar-brand logo-image" href="Home.aspx"><img src="images/iPeople Logo.jpg" alt="alternative"></!--a>
        
        <!-- Mobile Menu Toggle Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-awesome fas fa-bars"></span>
            <span class="navbar-toggler-awesome fas fa-times"></span>
        </button>
        <!-- end of mobile menu toggle button -->

       <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="Employee Home.aspx#header">Hub<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="Employee Home.aspx#personalinfo">Personal Info</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="">Survey</a>
                </li>

                <li class="nav-item">
                     
                     <asp:LinkButton class="nav-link page-scroll" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                    
                </li>
            </ul>
            <span class="nav-item social-icons">
                <span class="fa-stack">
                    <a href="https://www.facebook.com">
                        <span class="hexagon"></span>
                        <i class="fab fa-facebook-f fa-stack-1x"></i>
                    </a>
                </span>
                <span class="fa-stack">
                    <a href="https://www.twitter.com">
                        <span class="hexagon"></span>
                        <i class="fab fa-twitter fa-stack-1x"></i>
                    </a>
                </span>
            </span>
        </div>
    </nav> <!-- end of navbar -->
    <!-- end of navbar -->


    <!-- Header -->
    <header id="header" class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Monthly Survey</h1>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->


    <!-- Breadcrumbs -->
    <div class="ex-basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <a href="Employee Home.aspx">Employee Hub</a><i class="fa fa-angle-double-right"></i><a>Monthly Survey</a>
                    </div> <!-- end of breadcrumbs -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of ex-basic-1 -->
    <!-- end of breadcrumbs -->


 <center>
    
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/iPeople Logo.jpg" />
        </div>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="name" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Month:" style="text-align: left" Width="256px"></asp:Label>
        <asp:DropDownList ID="month" runat="server" Width="260px">
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="l404" runat="server" style="text-align: left" Width="256px"></asp:Label>
        <br />
        <asp:Button class="btn-solid-lg page-scroll" ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Disclaimer: Your identity will remain completely confidentail and will not be visible to your team leader or HR department. HR department will be able to see only anonymized data. Employees are encouraged to be honest while filling this survey." style="text-align: left" Width="700px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="1. Your health is in good state?" style="text-align: left" Width="700px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text=" Physical Health" style="text-align: left" Width="150px"></asp:Label>
        <asp:DropDownList ID="a1" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text=" Mental Health" style="text-align: left" Width="150px"></asp:Label>
        <asp:DropDownList ID="b1" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="2. Your personal relations are in good state?" style="text-align: left" Width="700px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text=" Family" style="text-align: left" Width="150px"></asp:Label>
        <asp:DropDownList ID="a2" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text=" Friends" style="text-align: left" Width="150px"></asp:Label>
        <asp:DropDownList ID="b2" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="3. You enjoy your day to day work?" style="text-align: left" Width="550px"></asp:Label>
        <asp:DropDownList ID="a3" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="4. You are learning & growing in your professional field?" style="text-align: left" Width="550px"></asp:Label>
        <asp:DropDownList ID="a4" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="5. You are able to meet your ends from your salary & benefits?" style="text-align: left" Width="550px"></asp:Label>
        <asp:DropDownList ID="a5" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Text="6. You are satisfied with your" style="text-align: left" Width="700px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Text=" working hours per week" style="text-align: left" Width="200px"></asp:Label>
        <asp:DropDownList ID="a6" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" Text=" leaves provided" style="text-align: left" Width="160px"></asp:Label>
        <asp:DropDownList ID="b6" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label16" runat="server" Text="7. You gave your complete efforts in fulfilling your role?" style="text-align: left" Width="550px"></asp:Label>
        <asp:DropDownList ID="a7" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label17" runat="server" Text="8. You like the people around you in your" style="text-align: left" Width="700px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label18" runat="server" Text=" team" style="text-align: left" Width="60px"></asp:Label>
        <asp:DropDownList ID="a8" runat="server" Width="130px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text=" department" style="text-align: left" Width="100px"></asp:Label>
        <asp:DropDownList ID="b8" runat="server" Width="130px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label20" runat="server" Text=" organisation" style="text-align: left" Width="100px"></asp:Label>
        <asp:DropDownList ID="c8" runat="server" Width="130px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label21" runat="server" Text="9. You are satisfied with your team leader?" style="text-align: left" Width="550px"></asp:Label>
        <asp:DropDownList ID="a9" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label22" runat="server" Text="10. Your work is impactful and making a difference in the world?" style="text-align: left" Width="550px"></asp:Label>
        <asp:DropDownList ID="a10" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label23" runat="server" Text="11. The organization is recruiting the right kind of people recently?" style="text-align: left" Width="550px"></asp:Label>
        <asp:DropDownList ID="a11" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" Text="12. You would recommend your friends and family to work at our organization?" style="text-align: left" Width="550px"></asp:Label>
        <asp:DropDownList ID="a12" runat="server" Width="150px">
            <asp:ListItem>Strongly Agree</asp:ListItem>
            <asp:ListItem>Slightly Agree</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem>Slightly Disagree</asp:ListItem>
            <asp:ListItem>Strongly Disagree</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <asp:Button class="btn-solid-lg page-scroll" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />
     </center>
    </form>
   

    
    <!-- Breadcrumbs -->
    <div class="ex-basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <a href="Employee Home.aspx">Employee Hub</a><i class="fa fa-angle-double-right"></i><a>Monthly Survey</a>
                    </div> <!-- end of breadcrumbs -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of ex-basic-1 -->
    <!-- end of breadcrumbs -->


    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="text-container about">
                        <h4>Few Words About Company</h4>
                        <p class="white">Prinkit is a fast growing digital marketing startup based in Vadodara. Built with a vision to help Indian Businesses flourish through modern digital marketing strategies. Every day we help our clients solve their toughest problems, build capabilities, and create better outcomes.</p>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of footer -->  
    <!-- end of footer -->


    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright © 2021 <a href="https://msub.digitaluniversity.ac">Students Of FTE-MSU, Harshvardhan Ram and Saumil Patel</a></p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright --> 
    <!-- end of copyright -->

	
    <!-- Scripts -->
    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/popper.min.js"></script> <!-- Popper tooltip library for Bootstrap -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/morphext.min.js"></script> <!-- Morphtext rotating text in the header -->
    <script src="js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
    <script src="js/validator.min.js"></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>
</html>