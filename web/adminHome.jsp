

<%
      String uname=(String) session.getAttribute("uname");
    if(uname!=null)
    {
    
    
    %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Employee Tracking</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/style.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/swipebox.css" rel="stylesheet" type="text/css" media="sll">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/011.jpg');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row0">
    <div id="topbar" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div class="fl_left">
        <ul>
          <li><i class="fa fa-phone"></i> 77895681921</li>
          <li><i class="fa fa-envelope-o"></i> anupreet.kaur444@gmail.com</li>
        </ul>
      </div>
      <div class="fl_right">
        <ul>
          <li><a href="adminHome.jsp"><i class="fa fa-lg fa-home"></i></a></li>
          <!--<li><a href="#">Login</a></li>-->
          <li><a href="index.jsp">Log Out</a></li>
        </ul>
      </div>
      <!-- ################################################################################################ -->
    </div>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="index.jsp">Employee Tracking</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class="active"><a href="index.jsp">Home</a></li>
          <li ><a  href="#empdiv">Employer</a>

          </li>
          <li><a  href="#clientdiv">Our Clients</a>

          <li><a href="#aboutdiv">About Us</a></li>
          <li><a href="#contactdiv">Contact Us</a></li>
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="flexslider basicslider">

    </div>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
<!--    <div class="center btmspace-80" >
      
     / main body 
    <div class="clear"></div>-->
<center>
    <div style="height: 2000px; width: 100%" id="functionalities ">
        
            <div style="height: 350px; width: 98%; margin-bottom: 5px;">                
                <div style="height:100px; width: 48%; float: left; margin-bottom: 20px;">
                    <a href="#" class="b-link-stripe b-animate-go   swipebox"  title="">
                    <img src="images/grid1.jpg" style="height: 100%; width: 100%; border-radius: 5px;">
                    <div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<div class="text-info">
									<h4>Live Location</h4>
									<p>Using GPS Network</p>
								</div>
							</h2>
						</div>
                    </a>
                </div>
                <div style="height: 100px; width: 48%; float: right; margin-bottom: 20px;">
                    <a href="createTeam.jsp" class="b-link-stripe b-animate-go   swipebox"  title="">
                    <img src="images/grid2.jpg" style="height: 100%; width: 100%; border-radius: 5px; ">
                    <div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<div class="text-info">
									<h4>Create Team</h4>
								</div>
							</h2>
						</div>
                    </a>
                </div>
            </div>
        
        <div style="height: 350px; width: 98%; margin-bottom: 20px;">                
                <div style="height: 100px; width: 48%; float: left;margin-bottom: 20px;">
                    <a href="viewTeam.jsp" class="b-link-stripe b-animate-go   swipebox"  title="">
                        <img src="images/grid3.jpg" style="height: 100%; width: 100%; border-radius: 5px;">
                    <div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<div class="text-info">
									<h4>View Team</h4>
								</div>
							</h2>
						</div>
                    </a>
                </div>
                <div style="height: 100px; width: 48%; float: right;margin-bottom: 20px;">
                    <a href="updateTeam.jsp" class="b-link-stripe b-animate-go   swipebox"  title="">
                        <img src="images/grid4.jpg" style="height: 100%; width: 100%; border-radius: 5px; margin-bottom: 50px;">
                    <div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<div class="text-info">
									<h4>Update Team</h4>
								</div>
							</h2>
						</div>
                    </a>
                </div>
            </div>
        
        <div style="height: 350px; width: 98%; margin-bottom: 20px;">                
                <div style="height: 100px; width: 48%; float: left; margin-bottom: 20px;">
                    <a href="remove.jsp" class="b-link-stripe b-animate-go   swipebox"  title="">
                        <img src="images/grid5.jpg" style="height: 500px; width: 100%; border-radius: 5px;">
                    <div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<div class="text-info">
									<h4>Remove Team</h4>
								</div>
							</h2>
						</div>
                    </a>
                </div>
                <div style="height: 100px; width: 48%; float: right; margin-bottom: 20px; ">
                    <a href="AssignTask.jsp" class="b-link-stripe b-animate-go   swipebox"  title="">
                        <img src="images/grid6.jpg" style="height: 100%; width: 100%; border-radius: 5px;">
                    <div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<div class="text-info">
									<h4>Assign Task</h4>
								</div>
							</h2>
						</div>
                    </a>
                </div>
            </div>
          
        <div style="height: 350px; width: 98%; margin-bottom: 20px;">                
                <div style="height: 100px; width: 48%; margin-bottom: 20px; float: left;">
                    <a href="location.jsp" class="b-link-stripe b-animate-go   swipebox"  title="">
                        <img src="images/location.png" style="height: 100%; width: 100%; border-radius: 5px;">
                    <div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<div class="text-info">
									<h4>Add new location of company</h4>
								</div>
							</h2>
						</div>
                    </a>
                </div>
                
                      <div style="height: 100px; width: 48%; margin-bottom: 20px;float: right; ">
                   
                 <a href="branch.jsp" class="b-link-stripe b-animate-go   swipebox"  title="">
                        <img src="images/branch.jpg" style="height: 100%; width: 100%; border-radius: 5px;">
                    <div class="b-wrapper">
							<h2 class="b-animate b-from-left    b-delay03 ">
								<div class="text-info">
									<h4>Add new branch</h4>
								</div>
							</h2>
						</div>
                    </a>
                </div>
            </div>
        
        
        
        </div>
</center>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<div class="wrapper coloured">
  <article class="hoc cta clear"> 
    <!-- ################################################################################################ -->
    <h6 class="three_quarter first">KNOW MORE ABOUT US...</h6>
    <footer class="one_quarter"><a class="btn" href="#">PROCEED</a></footer>
    <!-- ################################################################################################ -->
  </article>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row4 bgded overlay" style="background-image:url('images/demo/backgrounds/03.jpg');" id="contactdiv">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
      <h6 class="title">Services Overview</h6>
<!--      <p>Ligula a placerat condimentum orci nulla feugiat odio vel felis lacinia interdum cras auctor purus ut hendrerit.</p>
      <p class="btmspace-15">Malesuada non sem quisque vulputate velit et nisi ullamcorper aliquet tincidunt ut id magna leo mattis in quam dapibus.</p>-->
        <ul>
            <li><a  href="#"><font color="FFF" >User Registeration</font></a></li>
            <li><a  href="#"><font color="FFF" >Employee Log In</font></a></li>
        <li><a  href="#"><font color="FFF" >Track Employees</font></a></li>
        </ul>
      </ul>-->
    </div>
    <div class="one_third">
      <h6 class="title">Contact Us</h6>
      <p>Feel free to connect with us. You can send us your query.</p>
      <ul class="nospace linklist contact">
        <li><i class="fa fa-map-marker"></i>
          <address>
          PJC Infotech &amp; SCO:12-13, Phase-11, Mohali
          </address>
        </li>
        <li><i class="fa fa-phone"></i>+91 172 2211213</li>
        <li><i class="fa fa-envelope-o"></i> www.pjcinfotech.in</li>
      </ul>
    </div>
    <div class="one_third">
      <h6 class="title">Also available at:</h6>

<ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="http://pjcinfotech.in/">www.pjcinfotech.in</a></p>
    <!--<p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>-->
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src="layout/scripts/jquery.flexslider-min.js"></script>
<!--<script type="text/javascript">
    function toggleMe(a){
        var e = document.getElementById(a);
        if(!e)
            return true;
        if (e.style.display=="none")
        {
            e.style.display="block"
        }
        else
        {
            e.style.display="none"
        }
        return true;
    }
</script>-->
</body>

</html>
<%
        
    }
    else
    {
    response.sendRedirect("index.html");
    }
        
        %>