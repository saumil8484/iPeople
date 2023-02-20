<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Careers Position Details.aspx.cs" Inherits="Careers_Position_Details" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Website Title -->
    <title>Vacancy Details-iPeople</title>
    
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
                    <a class="nav-link page-scroll" href="Home.aspx#header">HOME <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="Home.aspx#intro">Intro</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="Home.aspx#careers">Careers</a>
                </li>


                <!-- Dropdown Menu -->          
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle page-scroll" href="Home.aspx#management" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">Personnel</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="Login.aspx"><span class="item-text">Login</span></a>
                </li>
                <!-- end of dropdown menu -->

                <li class="nav-item">
                    <a class="nav-link page-scroll" href="Home.aspx#contact">Contact Us</a>
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
                    <h1>Vacancy Details</h1>
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
                        <a href="Home.aspx">Home</a><i class="fa fa-angle-double-right"></i><a href="Careers.aspx"><span>Careers</span></a><i class="fa fa-angle-double-right"></i><span>Vacancy Details</span>
                    </div> <!-- end of breadcrumbs -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of ex-basic-1 -->
    <!-- end of breadcrumbs -->


   <center>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/iPeople Logo.jpg" />
            <br />
            <br />
            <br />
            <br />
        <asp:Label ID="Label2" runat="server" Text="Position Name :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pname" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label3" runat="server" Text="Department :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pdept" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label4" runat="server" Text="Job Description:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd1" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label5" runat="server" Text="Job Description:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd2" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label6" runat="server" Text="Job Description:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd3" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label7" runat="server" Text="Job Description:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd4" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label8" runat="server" Text="Job Description:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd5" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label9" runat="server" Text="Eligibility Requirements:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="preq1" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label10" runat="server" Text="Eligibility Requirements:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="preq2" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label11" runat="server" Text="Eligibility Requirements:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="preq3" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label22" runat="server" Text="KPI 1 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="kpi1" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label18" runat="server" Text="Target 1 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pt1" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label23" runat="server" Text="KPI 2 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="kpi2" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label19" runat="server" Text="Target 2 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pt2" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label24" runat="server" Text="KPI 3 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="kpi3" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label20" runat="server" Text="Target 3 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pt3" runat="server" BorderStyle="Solid" Width="256px" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label15" runat="server" Text="Monthly Salary :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="psal" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label16" runat="server" Text="Monthly Incentive :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pinc" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label17" runat="server" Text="Total Annual Leaves :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pleaves" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number" disabled="disabled"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label12" runat="server" Text="Vacancies :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pnosv" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number" disabled="disabled"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button class="btn-solid-lg page-scroll" ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
&nbsp;&nbsp;&nbsp;
            <asp:Button class="btn-solid-lg page-scroll" ID="Button2" runat="server" OnClick="Button2_Click" Text="Apply" />
        </div>
    </form>
    </center>

    
    <!-- Breadcrumbs -->
    <div class="ex-basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <a href="Home.aspx">Home</a><i class="fa fa-angle-double-right"></i><a href="Careers.aspx"><span>Careers</span></a><i class="fa fa-angle-double-right"></i><span>Vacancy Details</span>
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