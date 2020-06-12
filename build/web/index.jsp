

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
          <li><a href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
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
        <h1><a href="index.jsp">Employee Tracking</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class="active"><a href="index.jsp">Home</a></li>
          <li ><a  href="#empdiv">Employer</a>
<!--            <ul>
              <li><a href="pages/gallery.html">Gallery</a></li>
              <li><a href="pages/full-width.html">Full Width</a></li>
              <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
              <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
              <li><a href="pages/basic-grid.html">Basic Grid</a></li>
            </ul>-->
          </li>
          <li><a  href="#clientdiv">Our Clients</a>
<!--            <ul>
              <li><a href="#">Level 2</a></li>
              <li><a class="drop" href="#">Level 2 + Drop</a>
                <ul>
                  <li><a href="#">Level 3</a></li>
                  <li><a href="#">Level 3</a></li>
                  <li><a href="#">Level 3</a></li>
                </ul>
              </li>
              <li><a href="#">Level 2</a></li>
            </ul>
          </li>-->
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
      <ul class="slides"><!--
          
-->        <li>
          <article>
<!--            <p>Tincidunt</p>-->
            <br> <p>Already have an account?</p>
            <h3 class="heading">Member Login Here</h3>
            <footer>
              <form class="group" method="post" action="AdminLogin">
                <fieldset>
                  <legend>Newsletter:</legend>
                  <input type="email" name="email" value="" placeholder="Email Here&hellip;"><br>
                  <input type="password" name="pass" value="" placeholder="Password Here&hellip;"><br>
                  <center><button class="fa fa-sign-in" type="submit" title="Submit" ><em>Submit</em></button></center>
                </fieldset>
                  <A HREF="EmpLogin.jsp" style="text-decoration:none" class="A">Employee Login</a>

              </form>
            </footer>
          </article>
        </li><!--
        <li>
          <article>
              
            <p>Vulputate</p>
            <h3 class="heading">Rhoncus nisl non</h3>
            <p>Interdum erat ipsum quis leo viverra magna</p>
            <footer><a class="btn inverse" href="#">Fusce efficitur</a></footer>
          </article>
        </li>
        <li>
          <article>
            <p>Maecenas</p>
            <h3 class="heading">Diam feugiat tellus</h3>
            <p>Aliquam ante odio at condimentum mauris</p>
            <footer><a class="btn" href="#">Tincidunt etiam</a></footer>
          </article>
        </li>
-->      </ul>
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
    <div class="center btmspace-80" id="aboutdiv">
      <h3 class="heading">We provide you with</h3>
      <!--<p class="nospace">..................Something................</p>-->
    </div>
    <center>
    <ul class="nospace group center">
      <li class="one_third first">
        <article >
            <!--<a class="inverse" href="#"><i class="btmspace-30 icon fa fa-expand"></i></a>-->
          <h6 class="heading font-x1">Excellent Solution For Your Business</h6>
          <p>In today’s world of service, safety and security, proper personnel monitoring is vital to ensure a successful operation. Customer satisfaction is directly linked to a </p>
          
          <p id="special1" style="display: none"> profitable business. Site safety and security is dependent on how well a company monitors its employees, 3rd parties and customers.
Managing employees in the field has always been a challenge, especially for small businesses offering delivery or in-home services. Our Mobile tracker provides employers with ever-expanding options for tracking and checking on the status of employees.
GPS integrated promise you to provide even small businesses some fresh options for managing a mobile workforce. We provide a location-based service that runs as an app on employee smartphones and is administered by a manager from a browser-based Web tool. Simply put, in addition to other features like time tracking and fleet logistics, you can get where your employees are, where they’ve been and where they should be next. The goal is to make businesses more efficient through smarter dispatching, which should hopefully mean faster driving routes, better customer service and fuel savings. And yes, to also help businesses keep tabs on employee productivity.
              </p>
        
          <footer><input value="Read more>>" type="submit" onclick="return toggleMe('special1')"></input></footer>
          
        </article>
      </li>
      <li class="one_third">
        <article>
<!--            <a class="inverse" href="#"><i class="btmspace-30 icon fa fa-headphones"></i>
            </a>-->
          <h6 class="heading font-x1"></h6>
          <p></p>
          <footer></footer>
        </article>
      </li>
      <li class="one_third">
        <article>
            <!--<a class="inverse" href="#"><i class="btmspace-30 icon fa fa-history"></i></a>-->
          <h6 class="heading font-x1">We'll Make Sure Your Business is Safe</h6>
          <p>Production: Monitoring the ways in which an employee spends his time at work helps you understand how to increase production. Employees who use company time for personal </p>
          
          <p id="special" style="display: none;"> suffer. For example, if you monitor an employee's Internet usage and find he's spending a large portion of his day online, you can confront him and explain he needs to spend more time working.
              Strengths: Employees want you to acknowledge their strengths, and a monitoring system enables you to do so throughout each day. A monitoring system provides you with detailed snapshots of how an employee is going above and beyond the call of duty. Acknowledging employee excellence captured by the monitoring system also lessens trust issues employees may have with being monitored. If your employees understand that the monitoring system isn't being used solely to point out weaknesses, they may become more accepting of being monitored. Related Reading: Monitoring the Productivity of Isolated Employees.
              Safety: Employees may unknowingly or knowingly commit safety infractions, which may lead to serious injury. By monitoring the workplace, you have an eye in the sky to catch all safety issues, such as debris on the floor or an employee operating a forklift without a hard hat. Unlike employee weaknesses caught on the monitoring system, you must immediately bring safety issues to the forefront. Catching blatant disregard for safety on video may also save you from potential lawsuits.</p>
          
          <footer><input value="Read more>>" type="submit" onclick="return toggleMe('special')"></input></footer>
        </article>
      </li>
    </ul>
    </center>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded" style="background-image:url('images/demo/backgrounds/anigif.gif');">
    <div class="hoc split clear" id="empdiv">
    <section> 
      <!-- ################################################################################################ -->
      <h2 class="heading">QUICKLINKS</h2>
      <!--<p class="btmspace-50">Curabitur et sem eu lorem eleifend sollicitudin maecenas tristique felis ac dolor elementum eget molestie sem eleifend suspendisse ut lobortis massa.</p>-->
      <article><a href="#"><i class="icon fa fa-crosshairs"></i></a>
        <h6 class="heading font-x1">Live Location</h6>
        <p>Locating your team live using GPS</p>
      </article>
      <article><a href="#"><i class="icon fa fa-odnoklassniki"></i></a>
        <h6 class="heading font-x1">Access Anywhere </h6>
        <p>Access the live location of your team via web and mobile app</p>
      </article>
      <article><a href="#"><i class="icon fa fa-object-ungroup"></i></a>
        <h6 class="heading font-x1">Location History</h6>
        <p>Keep log of old tracking history of your team</p>
      </article>
      <article><a href="#"><i class="icon fa fa-signing"></i></a>
        <h6 class="heading font-x1">View all employees</h6>
        <p>Get a detailed record of your employees</p>
      </article>
      <!-- ################################################################################################ -->
    </section>
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <article class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="one_quarter first" id="clientdiv">
      <h3 class="heading font-x2">CLIENTS LINKED TO US</h3>
    </div>
    <div class="three_quarter">
      <p class="nospace btmspace-30">We like to work with ambitious start-ups as well as small and medium sized businesses. </p>
      <ul class="nospace group stats">
        <li><i class="fa fa-3x fa-crosshairs"></i>
            <br>
          <p><a href="#">PJC Infotech</a></p>
        </li>
        <li><i class="fa fa-3x fa-crosshairs"></i>
            <br>
          <p><a href="#">IDS Infotech</a></p>
        </li>
        <li><i class="fa fa-3x fa-crosshairs"></i>
            <br>
          <p><a href="#">TP Development</a></p>
        </li>
        <li><i class="fa fa-3x fa-crosshairs"></i>
            <br>
          <p><a href="#">PJC Web Solutions</a></p>
        </li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </article>
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
<!--      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
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
<!--        <li><i class="fa fa-fax"></i>+91 172 2211213</li>-->
        <li><i class="fa fa-envelope-o"></i> www.pjcinfotech.in</li>
      </ul>
    </div>
    <div class="one_third">
      <h6 class="title">Also available at:</h6>
<!--      <ul class="nospace linklist">
        <li>
          <article>
            <h2 class="nospace font-x1"><a href="#">In neque nam tortor</a></h2>
            <time class="font-xs block btmspace-10" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
            <p class="nospace">Facilisis ex facilisis curabitur euismod egestas mauris et ultricies mauris&hellip;</p>
          </article>
        </li>
        <li>
          <article>
            <h2 class="nospace font-x1"><a href="#">Odio lobortis nec cursus</a></h2>
            <time class="font-xs block btmspace-10" datetime="2045-04-05">Thursday, 5<sup>th</sup> April 2045</time>
            <p class="nospace">Cras consequat sem quis hendrerit interdum nunc diam volutpat&hellip;</p>
          </article>
        </li>
      </ul>-->
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
