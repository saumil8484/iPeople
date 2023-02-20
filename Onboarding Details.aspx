<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Onboarding Details.aspx.cs" Inherits="Onboarding_Details" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Website Title -->
    <title>Onboarding Details-iPeople</title>
    
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
       <a class="navbar-brand logo-text page-scroll">iPeople</a>

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
                    <a class="nav-link page-scroll" href="Dashboard.aspx#header">Dashboard<span class="sr-only">(current)</span></a>
                </li>
                
                <!-- Dropdown Menu -->          
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle page-scroll" href="Dashboard.aspx#recruitment" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">Recruitment</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="Job Positions.aspx"><span class="item-text">Manage Vacancies</span></a>
                        <div class="dropdown-items-divide-hr"></div>
                        <a class="dropdown-item" href="Job Applications.aspx"><span class="item-text">Review Applications</span></a>
                        <div class="dropdown-items-divide-hr"></div>
                        <a class="dropdown-item" href="Onboarding.aspx"><span class="item-text">Onboarding</span></a>
                </li>
                <!-- end of dropdown menu -->

                <!-- Dropdown Menu -->          
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle page-scroll" href="Dashboard.aspx#Employees" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">Administration</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="Employee Attendance.aspx"><span class="item-text">Attendance</span></a>
                        <div class="dropdown-items-divide-hr"></div>
                        <a class="dropdown-item" href="Employee Performance.aspx"><span class="item-text">Performance</span></a>
                        <div class="dropdown-items-divide-hr"></div>
                        <a class="dropdown-item" href="Employee Payroll.aspx"><span class="item-text">Payroll</span></a>
                        <div class="dropdown-items-divide-hr"></div>
                        <a class="dropdown-item" href="Appraisal.aspx"><span class="item-text">Appraisal</span></a>
                </li>
                <!-- end of dropdown menu -->

                <li class="nav-item">
                    <a class="nav-link page-scroll" href="Dashboard.aspx#insights">Insights</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="Dashboard.aspx#contact">Contact Us</a>
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
                    <h1>Onboarding Details</h1>
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
                        <a href="Dashboard.aspx">Dashboard</a><i class="fa fa-angle-double-right"></i><a href="Dashboard.aspx#recruitment"><span>Recruitment</span></a><i class="fa fa-angle-double-right"></i><a href="Onboarding.aspx"><span>Onboarding</span></a><i class="fa fa-angle-double-right"></i><span>Onboarding Details</span>
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
        <asp:Label ID="Label1" runat="server" style="text-align: left" Text="Applicant ID :" Width="256px"></asp:Label>
        <asp:TextBox ID="aid" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="text-align: left" Text="Position :" Width="256px"></asp:Label>
        <asp:TextBox ID="pname" runat="server" BorderStyle="Solid" Width="256px" ReadOnly="True" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" style="text-align: left" Text="Employee ID :" Width="256px"></asp:Label>
        <asp:TextBox ID="eid" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" style="text-align: left" Text="Employee Name :" Width="256px"></asp:Label>
        <asp:TextBox ID="ename" runat="server" BorderStyle="Solid" Width="256px" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" style="text-align: left" Text="Phone Number :" Width="256px"></asp:Label>
        <asp:TextBox ID="ephone" runat="server" BorderStyle="Solid" Width="256px" TextMode="Phone" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" style="text-align: left" Text="Email ID :" Width="256px"></asp:Label>
        <asp:TextBox ID="eemail" runat="server" BorderStyle="Solid" Width="256px" TextMode="Email" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" style="text-align: left" Text="ID Proof Verified :" Width="256px"></asp:Label>
        
        <asp:TextBox ID="verified1" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        
        <br />
        
        <br />
        <asp:Label ID="Label8" runat="server" style="text-align: left" Text="Temporary Address :" Width="256px"></asp:Label>
        <asp:TextBox ID="etaddr" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" style="text-align: left" Text="Permanent Address :" Width="256px"></asp:Label>
        <asp:TextBox ID="epaddr" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" style="text-align: left" Text="Address Proof Verified :" Width="256px"></asp:Label>
        <asp:TextBox ID="verified2" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" style="text-align: left" Text="Date fo Joining :" Width="256px"></asp:Label>
        <asp:TextBox ID="edoj" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" style="text-align: left" Text="Blood Group :" Width="256px"></asp:Label>
        <asp:DropDownList ID="ebldgrp" runat="server" Width="260px">
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" style="text-align: left" Text="Maritial Status :" Width="256px"></asp:Label>
        <asp:DropDownList ID="emarry" runat="server" Width="260px">
            <asp:ListItem>Single</asp:ListItem>
            <asp:ListItem>Married</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" style="text-align: left" Text="Family Phone Number :" Width="256px"></asp:Label>
        <asp:TextBox ID="efamphn" runat="server" BorderStyle="Solid" Width="256px" TextMode="Phone"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" style="text-align: left" Text="Documents Link :" Width="256px"></asp:Label>
        <asp:TextBox ID="eaddrproof" runat="server" BorderStyle="Solid" Width="256px" TextMode="Url"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label18" runat="server" style="text-align: left" Text="Password" Width="256px"></asp:Label>
        <asp:TextBox ID="password" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label16" runat="server" style="text-align: left" Text="Onboarding complete :" Width="256px"></asp:Label>
        <asp:DropDownList ID="ocomp" runat="server" Width="260px">
            <asp:ListItem>Pending</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button class="btn-solid-reg page-scroll" ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-solid-reg page-scroll" ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        <br />
        
        </center> 
    </form>
   
   

    <!-- Breadcrumbs -->
    <div class="ex-basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                         <a href="Dashboard.aspx">Dashboard</a><i class="fa fa-angle-double-right"></i><a href="Dashboard.aspx#recruitment"><span>Recruitment</span></a><i class="fa fa-angle-double-right"></i><a href="Onboarding.aspx"><span>Onboarding</span></a><i class="fa fa-angle-double-right"></i><span>Onboarding Details</span>
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