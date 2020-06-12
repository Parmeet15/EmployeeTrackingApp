
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
      String mid1= (String)session.getAttribute("mid");
   int mid=Integer.parseInt(mid1);
     if(mid!=0)
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
          <li class="active"><a href="index.jsp">Home</a></li>
          <li><a class="drop" href="#">Pages</a>
            <ul>
              <li><a href="pages/gallery.html">Gallery</a></li>
              <li><a href="pages/full-width.html">Full Width</a></li>
              <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
              <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
              <li><a href="pages/basic-grid.html">Basic Grid</a></li>
            </ul>
          </li>
          <li><a class="drop" href="#">Dropdown</a>
            <ul>
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
          </li>
          <li><a href="#">Link Text</a></li>
          <li><a href="#">Link Text</a></li>
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
        <h1 class="heading">Add Branch for a Location</h1>
        
    </div>
    <center>
            <form action="BranchServlet" method="post">
            
                                <ul>
                                        
                                        <li class="first">
						<div class="position">
							<a href="#" ></a>
                                                        <select name="lid" class="text" style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; ">
                                                            <option value="unknown">select Location</option>
                                                                     
                <%
                
    try{
                Connection con= factory.confac2.getCon();

   Statement stmt= con.createStatement();
  ResultSet rs=  stmt.executeQuery("select l.lname,l.lid from location l,company c  where l.cid=c.cid  and c.mid= "+mid);
while(rs.next())
{
%>
                   
<option value="<%=rs.getString(2)%>"><%=rs.getString(1)%></option>                 



             <% }
     }
    catch(Exception e)
    {
    out.println(e);
    }
             %>           
              
                                                        </select>
                                                      <input type="text" name="branch" value="" placeholder="Location Here&hellip;" required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
                  
                   <input type="hidden" name="mid" value="<%=session.getAttribute("mid")%>"  required style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; "><br>
 
			
                                                        
							<div class="clear"></div>
							<div class="dot">
								<span> </span>
							</div>
						</div>
					</li>
                                </ul>
          		
                             
				<input type="submit"  value="submit" style="border-radius: 22px; height: 42px; width:50%; font-weight: bold; text-align: center; ">
                                </form>
                                                       <h2> <%
 String status=(String) request.getAttribute("status");
if(status!=null)
{
    out.println("<h3><font color='red'>"+status+"</font></h3>");
}
%>
      <%
 String success=(String) request.getAttribute("success");
if(success!=null)
{
    out.println("<h3><font color='green'>"+success+"</font></h3>");
}
%>
                                                        <%
 String failure=(String) request.getAttribute("failure");
if(failure!=null)
{
    out.println("<h3><font color='red'>"+failure+"</font></h3>");
}
%></h2>
                                
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
</body>
</html>

<%
        
    }
    else
    {
    response.sendRedirect("index.html");
    }
        
        %>
