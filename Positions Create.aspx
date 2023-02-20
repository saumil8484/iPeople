<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Positions Create.aspx.cs" Inherits="Positions_Create" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Website Title -->
    <title>Add Vacancy-iPeople</title>
    
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
                    <h1>Add Vacancy</h1>
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
                        <a href="Dashboard.aspx">Dashboard</a><i class="fa fa-angle-double-right"></i><a href="Dashboard.aspx#recruitment"><span>Recruitment</span></a><i class="fa fa-angle-double-right"><a href="Job Positions.aspx"></i><span>Manage Vacancies</span></a><i class="fa fa-angle-double-right"></i><span>Add Vacancy</span>
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
        <asp:Label ID="Label1" runat="server" Text="Position ID :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pid" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label25" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pid" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Position Name :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pname" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label26" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pname" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Position in Department :" style="text-align: left" Width="256px"></asp:Label>
        <asp:DropDownList ID="pdept" runat="server" Width="260px">
            <asp:ListItem>Designing</asp:ListItem>
            <asp:ListItem>Advertising</asp:ListItem>
            <asp:ListItem>Finance & Legal</asp:ListItem>
            <asp:ListItem>HR</asp:ListItem>
            <asp:ListItem>Business Development</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label27" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pdept" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Job Description Line 1 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd1" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label28" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pjd1" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Job Description Line 2 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd2" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label29" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pjd2" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Job Description Line 3 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd3" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label30" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pjd3" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Job Description Line 4 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd4" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label31" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="pjd4" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Job Description Line 5 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pjd5" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label32" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="pjd5" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Eligibility Requirements Line 1 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="preq1" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label33" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="preq1" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Eligibility Requirements Line 2 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="preq2" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label34" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="preq2" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Eligibility Requirements Line 3 :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="preq3" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label35" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="preq3" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label22" runat="server" Text="KPI 1:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="kpi1" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label36" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="kpi1" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label12" runat="server" Text="Target 1:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pt1" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label37" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="pt1" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label23" runat="server" Text="KPI 2:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="kpi2" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label38" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="kpi2" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label13" runat="server" Text="Target 2:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pt2" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label39" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="pt2" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label24" runat="server" Text="KPI 3:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="kpi3" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label40" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="kpi3" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label14" runat="server" Text="Target 3:" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pt3" runat="server" BorderStyle="Solid" Width="256px"></asp:TextBox>
        <br />
        <asp:Label ID="Label41" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="pt3" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label15" runat="server" Text="Monthly Salary :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="psal" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label42" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="psal" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label16" runat="server" Text="Monthly Incentive :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pinc" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label43" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="pinc" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label17" runat="server" Text="Total Annual Leaves :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pleaves" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label44" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="pleaves" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label18" runat="server" Text="Position ID of Boss :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pbossid" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label45" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="pbossid" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label19" runat="server" Text="Total No. of Positions :" style="text-align: left" Width="256px"></asp:Label>
        <asp:TextBox ID="pno" runat="server" BorderStyle="Solid" Width="256px" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label46" runat="server" Width="256px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="pno" Display="Dynamic" ErrorMessage="Please fill above detail !" ForeColor="Red" Width="256px"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />
        <asp:Button class="btn-solid-reg page-scroll" ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-solid-reg page-scroll" ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Position" />
    </center>
    </form>

    <!-- Breadcrumbs -->
    <div class="ex-basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                         <a href="Dashboard.aspx">Dashboard</a><i class="fa fa-angle-double-right"></i><a href="Dashboard.aspx#recruitment"><span>Recruitment</span></a><i class="fa fa-angle-double-right"><a href="Job Positions.aspx"></i><span>Manage Vacancies</span></a><i class="fa fa-angle-double-right"></i><span>Add Vacancy</span>
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