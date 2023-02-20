<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Management_Dashboard" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Website Title -->
    <title>Dashboard-iPeople</title>
    
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
                    <a class="nav-link page-scroll" href="#header">Dashboard<span class="sr-only">(current)</span></a>
                </li>
                
                <!-- Dropdown Menu -->          
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle page-scroll" href="#recruitment" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">Recruitment</a>
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
                    <a class="nav-link dropdown-toggle page-scroll" href="#Employees" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">Administration</a>
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
                    <a class="nav-link page-scroll" href="#insights">Insights</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="#contact">Contact Us</a>
                </li>

                 <li class="nav-item">
                     <form runat="server">
                     <asp:LinkButton class="nav-link page-scroll" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                    </form>
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
                    <h1>Dashboard</h1>
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
                        <a>Dashboard</a><i class="fa fa-angle-double-right"></i>
                    </div> <!-- end of breadcrumbs -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of ex-basic-1 -->
    <!-- end of breadcrumbs -->
    


     <!-- recruitment -->
    <div id="recruitment" class="cards-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">Recruitment</div>
                    <h2>Choose an option to administer <br> the Receuitment drive</h2>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <center> 
             <!-- Card -->
                <a class="btn-solid-reg page-scroll" href="Job Positions.aspx">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Manage Vacancies</h3>
                            <p>Review, update, add or remove job positions</p>
                        </div>
                   </div>
               </a>
             <!-- end of card -->
             &nbsp;&nbsp;
             <!-- Card -->
                <a class="btn-solid-reg page-scroll" href="Job Applications.aspx">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Review Applications</h3>
                            <p>Review, evaluate or select job applications</p>
                        </div>
                   </div>
                </a>
              <!-- end of card -->
             <br /><br />
             <!-- Card -->
                <a class="btn-solid-reg page-scroll" href="Onboarding.aspx">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Onboarding</h3>
                            <p>Fill-in additional details of potential new team member</p>
                        </div>
                   </div>
                </a>
              <!-- end of card -->
            </center>

        </div> <!-- end of container -->
    </div> <!-- end of cards-2 -->
    <!-- end of recruitment -->

   <!-- Employees -->
    <div id="Employees" class="cards-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">Administration</div>
                    <h2>Choose an option to manage <br> the team member's operationality</h2>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <center> 
             <!-- Card -->
                <a class="btn-solid-reg page-scroll" href="Employee Attendance.aspx">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Attendance</h3>
                            <p>Enter today's attendance or review previous presence</p>
                        </div>
                   </div>
                </a>
              <!-- end of card -->
              &nbsp;&nbsp;
              <!-- Card -->
                <a class="btn-solid-reg page-scroll" href="Employee Performance.aspx">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Performance</h3>
                            <p>Evaluate or review team member's performances</p>
                        </div>
                   </div>
                </a>
              <!-- end of card -->
              </br></br>
              <!-- Card -->
                <a class="btn-solid-reg page-scroll" href="Employee Payroll.aspx">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Payroll</h3>
                            <p>Generate payroll or review previous payrolls</p>
                        </div>
                   </div>
                </a>
              <!-- end of card -->
              &nbsp;&nbsp;
              <!-- Card -->
                <a class="btn-solid-reg page-scroll" href="Appraisal.aspx">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Appraisal</h3>
                            <p>Evaluate team member for future appraisals</p>
                        </div>
                   </div>
                </a>
              <!-- end of card -->
             </center>
        </div> <!-- end of container -->
    </div> <!-- end of cards-2 -->
    <!-- end of Employees -->

         <!-- Insights -->
    <div id="insights" class="cards-2">
        <div class="container">
            <center> 
             <!-- Card -->
                <a class="btn-solid-reg page-scroll" href="Insights.aspx">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Insights</h3>
                            <p>Review overall career contribution of team members</p>
                        </div>
                   </div>
               </a>
             <!-- end of card -->
            </center>
        </div> <!-- end of container -->
    </div> <!-- end of cards-2 -->
    <!-- end of Insights -->

     <!-- Contact -->
    <div id="contact" class="form-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="text-container">
                        <div class="section-title">CONTACT</div>
                        <h2>Get In Touch Using The Form</h2>
                        <p>You can stop by our office for a cup of coffee and just use the contact form below for any questions and inquiries</p>
                        <ul class="list-unstyled li-space-lg">
                            <li class="address"><i class="fas fa-map-marker-alt"></i><a href="https://www.google.co.in/maps/place/Madhav+Complex/@22.3107639,73.1637904,17z/data=!3m1!4b1!4m5!3m4!1s0x395fc9abe072da57:0xb5c540a0eac615aa!8m2!3d22.3108398!4d73.1659793?hl=en">306-307, Madhav Complex, Alkapuri, Vadodara - 390007</a></li>
                            <li><i class="fas fa-phone"></i><a href="tel:+9179905795340">+917990579534</a></li>
                            <li><i class="fas fa-envelope"></i><a href="mailto:contact@prinkit.in">contact@prinkit.in</a></li>
                        </ul>
                        <h3>Follow Prinkit.in On Social Media</h3>

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
                        <span class="fa-stack">
                            <a href="https://www.pinterest.com">
                                <span class="hexagon"></span>
                                <i class="fab fa-pinterest fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="https://www.instagram.com">
                                <span class="hexagon"></span>
                                <i class="fab fa-instagram fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="https://www.linkedin.com">
                                <span class="hexagon"></span>
                                <i class="fab fa-linkedin-in fa-stack-1x"></i>
                            </a>
                        </span>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-6">
                    
                    <!-- Contact Form -->
                    <form id="contactForm" data-toggle="validator" data-focus="false">
                        <div class="form-group">
                            <input type="text" class="form-control-input" id="cname" required>
                            <label class="label-control" for="cname">Name</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control-input" id="cemail" required>
                            <label class="label-control" for="cemail">Email</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control-textarea" id="cmessage" required></textarea>
                            <label class="label-control" for="cmessage">Your message</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group checkbox">
                            <input type="checkbox" id="cterms" value="Agreed-to-Terms" required>I agree with Prinkit.in's stated Privacy Policy and Terms Conditions. 
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="form-control-submit-button">SUBMIT MESSAGE</button>
                        </div>
                        <div class="form-message">
                            <div id="cmsgSubmit" class="h3 text-center hidden"></div>
                        </div>
                    </form>
                    <!-- end of contact form -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of form-2 -->
    <!-- end of contact -->

    <!-- Breadcrumbs -->
    <div class="ex-basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <a>Dashboard</a><i class="fa fa-angle-double-right"></i>
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