<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee Info.aspx.cs" Inherits="Personal_Info" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Website Title -->
    <title>Employee Personal Info-iPeople</title>
    
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
                    <a class="nav-link page-scroll" href="">Personal Info</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="Employee Home.aspx#survey">Survey</a>
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
                    <h1>Personal Info</h1>
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
                        <a href="Employee Home.aspx">Employee Hub</a><i class="fa fa-angle-double-right"></i><a>Personal Info</a>
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
        <span class="auto-style1">Personal Info<br />
        </span>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="text-align: left" Text="Employee Name :" Width="256px"></asp:Label>
        <asp:TextBox ID="ename" runat="server" BorderStyle="Solid" Width="256px" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Text="" Width="128px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be kept empty !" Display="Dynamic" ControlToValidate="ename" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" style="text-align: left" Text="Phone Number :" Width="256px"></asp:Label>
        <asp:TextBox ID="ephone" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Text="" Width="128px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone Number cannot be kept empty !" Display="Dynamic" ControlToValidate="ephone" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid phone number !" ForeColor="Red" ValidationExpression="[0-9]{10}" Display="Dynamic" ControlToValidate="ephone"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label4" runat="server" style="text-align: left" Text="Email ID :" Width="256px"></asp:Label>
        <asp:TextBox ID="eemail" runat="server" BorderStyle="Solid" Width="256px" TextMode="Email" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="" Width="128px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email cannot be kept empty !" Display="Dynamic" ControlToValidate="eemail" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter valid email ID !" ForeColor="Red" Display="Dynamic" ControlToValidate="eemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label5" runat="server" style="text-align: left" Text="Temporary Address :" Width="256px"></asp:Label>
        <asp:TextBox ID="etaddr" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label12" runat="server" Text="" Width="128px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Temporary Address cannot be kept empty !" Display="Dynamic" ControlToValidate="etaddr" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label6" runat="server" style="text-align: left" Text="Permanent Address :" Width="256px"></asp:Label>
        <asp:TextBox ID="epaddr" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label13" runat="server" Text="" Width="128px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Permanent Address cannot be kept empty !" Display="Dynamic" ControlToValidate="epaddr" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label7" runat="server" style="text-align: left" Text="Blood Group :" Width="256px"></asp:Label>
        <asp:TextBox ID="ebldgrp" runat="server" BorderStyle="Solid" Width="256px" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="Label14" runat="server" Text="" Width="128px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Blood Group cannot be kept empty !" Display="Dynamic" ControlToValidate="ebldgrp" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label8" runat="server" style="text-align: left" Text="Maritial Status :" Width="256px"></asp:Label>
        <asp:DropDownList ID="emarry" runat="server" Width="260px">
            <asp:ListItem>Single</asp:ListItem>
            <asp:ListItem>Married</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Label ID="Label9" runat="server" style="text-align: left" Text="Family Phone Number :" Width="256px"></asp:Label>
        <asp:TextBox ID="efamphn" runat="server" BorderStyle="Solid" Width="256px" TextMode="Phone"></asp:TextBox>
        <br />
        <asp:Label ID="Label15" runat="server" Text="" Width="128px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Family phone number cannot be kept empty !" Display="Dynamic" ControlToValidate="efamphn" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter valid family phone number !" ForeColor="Red" ValidationExpression="[0-9]{10}" Display="Dynamic" ControlToValidate="efamphn"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button class="btn-solid-lg page-scroll" ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-solid-lg page-scroll" ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Info" />
        <br />
       
       </center> 
    </form>

    
    <!-- Breadcrumbs -->
    <div class="ex-basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <a href="Employee Home.aspx">Employee Hub</a><i class="fa fa-angle-double-right"></i><a>Personal Info</a>
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