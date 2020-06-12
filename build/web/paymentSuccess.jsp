

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
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
          <li><a class="drop" href="#">Employer</a></li>
          <li><a class="drop" href="#">Our Clients</a>
            
          </li>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Contact Us</a></li>
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
            </div>
    <center>
          <div class="container">
			<h2>Payment Successful</h2>
             <%
                          
                Properties cdata=(Properties) session.getAttribute("clientdata");
                    String fname=(String) cdata.get("fname");
                    String lname=(String) cdata.get("lname");
                    String email=(String) cdata.get("email");
                    String gender=(String) cdata.get("gender");
                    String dob=(String) cdata.get("dob");
                    String cname=(String) cdata.get("cname");
                    String cprofile=(String) cdata.get("cprofile");
                    String caddress=(String) cdata.get("caddress");
                      String cloc=(String) cdata.get("cloc");
                        String cbranch=(String) cdata.get("cbranch");
                    String contact=(String) cdata.get("contact");
                    String pass=(String) cdata.get("pass");
                   
                    String mperiod=(String) cdata.get("mperiod");
              try{   
                 Connection con=   factory.confac2.getCon();
                
                 
                    String q="insert into manager(fname, lname, email, dob, gender, company, cprofile, caddress, contact, pass, mperiod) values(?,?,?,?,?,?,?,?,?,?,?)";
                      PreparedStatement ps=  con.prepareStatement(q);
                    ps.setString(1, fname);
                    ps.setString(2, lname);
                    ps.setString(3, email);
                    ps.setString(4, dob);
                    ps.setString(5, gender);
                    ps.setString(6, cname);
                    ps.setString(7, cprofile);
                    ps.setString(8, caddress);
                    ps.setString(9, contact);
                    ps.setString(10, pass);
                    ps.setString(11, mperiod);
                     int nor= ps.executeUpdate();
                     String q4="insert into logincredentials(emailid,Password) values(?,?)";
                          PreparedStatement ps4=  con.prepareStatement(q4);
                    ps4.setString(1, email);
                    ps4.setString(2, pass);   
                     int nor4= ps4.executeUpdate();
                     
                     
                   String  q5= "select mid from manager  where email=?";
                      PreparedStatement stmt1= con.prepareStatement(q5);
                      stmt1.setString(1, email);
              ResultSet rs1=  stmt1.executeQuery();
              int mid=0;
           while(rs1.next())
           {
            mid=Integer.parseInt(rs1.getString(1));
            
           }         
                     
                     
                      String q1="insert into company(cname, caddress, mid)values(?,?,?)";
                      PreparedStatement ps1=  con.prepareStatement(q1);
                    ps1.setString(1, cname);
                    ps1.setString(2, caddress);
                    ps1.setInt(3, mid);
                    
                  int nor1= ps1.executeUpdate();
                  
                  
                  
                   String  q6= "select cid from company  where mid=?";
                      PreparedStatement stmt2= con.prepareStatement(q6);
                      stmt2.setInt(1, mid);
              ResultSet rs2=  stmt2.executeQuery();
              int cid=0;
           while(rs2.next())
           {
            cid=Integer.parseInt(rs2.getString(1));
            
           }         
                  
                  String q2="insert into location(lname,cid) values(?,?)";
                      PreparedStatement ps2=  con.prepareStatement(q2);
                    ps2.setString(1, cloc);
                    ps2.setInt(2, cid);
                   
                  int nor2= ps2.executeUpdate();
                  
                  
                   String  q7= "select lid from location  where cid=?";
                      PreparedStatement stmt3= con.prepareStatement(q7);
                      stmt3.setInt(1, cid);
              ResultSet rs3=  stmt3.executeQuery();
              int lid=0;
           while(rs3.next())
           {
            lid=Integer.parseInt(rs3.getString(1));
            
           }         
                  
                  
                  String q3="insert into branch(bname, lid) values(?,?)";
                      PreparedStatement ps3=  con.prepareStatement(q3);
                    ps3.setString(1, cbranch);
                    ps3.setInt(2, lid);
                   
                  int nor3= ps3.executeUpdate();
                    
                 if(nor==0)
                 {
                 
                 
                 response.sendRedirect("paymentSuccess.jsp");
                 }
                 
              }
              catch(Exception e)
              {
              out.println(e);
              }
              try{
                  Connection con=  factory.confac2.getCon();
                    Statement stmt=  con.createStatement();
                 stmt.executeUpdate("create table "+fname+"_"+cname+"(empid varchar(20) primary key, name varchar(34), contact varchar(13),emailid varchar(100),address varchar(500),password varchar(22))");
                 }
                 catch(Exception e)
                 {
                 out.println(e);
                 }
              %>
                        
                            <h1>Thanks for Registration </h1>
		</div>
              <center>
              <a class="btn" href="index.jsp">LOG IN</a>
              </center>
                    
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
