

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
          <li><a href="EmployeeHome.jsp"><i class="fa fa-lg fa-home"></i></a></li>
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
          <li class="active"><a href="EmployeeHome.jsp">Home</a></li>
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
    
    
    <form method="post" action="TaskServlet">
         <button  type="submit" title="Update number of hours" style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; " ><em>Update number of Hours</em></button>
        
        <input type="hidden" name="email" value="<%=session.getAttribute("email")%>"/>
       
    </form>
        <br>
    <form method="post" action="SalaryServlet">
        
        
         <button  type="submit" title="View Salary" style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; " ><em>View Salary</em></button>
       <input type="hidden" name="email" value="<%=session.getAttribute("email")%>"/>
    </form>
    <br>
     <br>
    <form method="post" action="GenerateSalaryServlet">
        
        
         <button  type="submit" title="Get Salary" style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; " ><em>Get Salary</em></button>
       <input type="hidden" name="email" value="<%=session.getAttribute("email")%>"/>
    </form>
    <br>
     <br>
    <form method="post" action="AddAccountServlet">
        
        
         <button  type="submit" title="Add account" style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; " ><em>Add Account</em></button>
       <input type="hidden" name="email" value="<%=session.getAttribute("email")%>"/>
    </form>
    <br>
    
    
     <%
 String salary=(String) request.getAttribute("salary");
if(salary!=null)
{
    out.println("<h3><font color='green'>Salary is :"+salary+"</font></h3>");
}
%>
     <%
 String status=(String) request.getAttribute("status");
if(status!=null)
{
    out.println("<h3><font color='green'> "+status+"</font></h3>");
}
%>
    
     <%
 String acct=(String) request.getAttribute("acct");
if(acct!=null)
{
    out.println("<h3><font color='green'> Can't process Salary into your account "+acct+"</font></h3>");
}
%>

<%
 String success=(String) request.getAttribute("success");
if(success!=null)
{
    out.println("<h3><font color='green'> Salary "+success+"  credited to your account</font></h3>");
}
%>

<%
 String actadd=(String) request.getAttribute("actadd");
if(actadd!=null)
{
    out.println("<h3><font color='green'> "+actadd+"</font></h3>");
}
%>
    
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
