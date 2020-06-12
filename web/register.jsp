

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Employee Tracking</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
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
          <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
          <!--<li><a href="#">Login</a></li>-->
          <li><a href="register.jsp">Register</a></li>
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
        <h1><a href="index.html">Employee Tracking</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li ><a href="index.jsp">Home</a></li>
          <li><a href="#">Employer</a>
            
          </li>
          <li><a class="drop" href="index.jsp">Our Clients</a>
          </li>
          <li><a href="index.jsp">About Us</a></li>
          <li><a href="index.jsp">Contact Us</a></li>
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
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="center btmspace-80">
        <h1 class="heading">Registration Form</h1>
    </div>
    <center>
           <form method="post" action="RegisterServlet">
                <fieldset>
                  <legend>Newsletter:</legend>
                  <input type="text" name="fname" value="" placeholder="First Name Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="text" name="lname" value="" placeholder="Last Name Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="email" name="email" value="" placeholder="Email Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="text" name="dob" value="" placeholder="Date of Birth Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
<!--                  <input type="select" value="" placeholder="Gender Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>-->
                  <select name="gender"  style=" border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; " >
                                                            <option name="unknown">Gender Here&hellip;</option>
                                                            <option name="male">Male</option>
                                                            <option name="female">Female</option>
                  </select><br>
                  <input type="text" name="company" value="" placeholder="Company Name Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="text" name="cprofile" value="" placeholder="Company Profile Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="text" name="caddress" value="" placeholder="Company Address Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="text" name="cloc" value="" placeholder="Company Location Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="text" name="cbranch" value="" placeholder="Company Branch Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="text" name="contact" value="" placeholder="Contact Number Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="text" name="pass" value="" placeholder="Password Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <input type="text" name="cpass" value="" placeholder="Confirm Password Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  <!--<input type="text" value="" placeholder="Membership Period Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>-->
                  <select name="mperiod" class="text" style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; ">
                                                            <option value="unknown">select membership period</option>
                                                            <option value="1">1 year</option>
                                                            <option value="2">2 year</option>
                                                            <option value="3">3 year</option>
                                                            
                  </select><br>
                  <center><button  type="submit" title="Submit" style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; " ><em>Submit</em></button></center>
                </fieldset>
              </form>
    </center>
    <!-- / main body -->
  </main>
</div>

<div class="wrapper coloured">
  <article class="hoc cta clear"> 
    <h6 class="three_quarter first">KNOW MORE ABOUT US...</h6>
    <footer class="one_quarter"><a class="btn" href="#">PROCEED</a></footer>
  </article>
</div>
<div class="wrapper row4 bgded overlay" style="background-image:url('images/demo/backgrounds/03.jpg');">
  <footer id="footer" class="hoc clear"> 
    <div class="one_third first">
      <h6 class="title">Services Overview</h6>

        <ul>
            <li><a  href="#"><font color="FFF" >User Registeration</font></a></li>
            <li><a  href="#"><font color="FFF" >Employee Log In</font></a></li>
        <li><a  href="#"><font color="FFF" >Track Employees</font></a></li>
        </ul>

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
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="http://pjcinfotech.in/">www.pjcinfotech.in</a></p>
    
  </div>
</div>
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src="layout/scripts/jquery.flexslider-min.js"></script>
<script type="text/javascript">
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
</script>
</body>
</html>
