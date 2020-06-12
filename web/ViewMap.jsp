
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%
      String uname=(String) session.getAttribute("uname");
    if(uname!=null)
    {
    
    
    %>


   <style type="text/css">
      #map-canvas { height: 600px;
                    width: auto;
                    margin: 0px;
                    padding: 0px
      }
    </style>
     <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDqK215s4FsunulHtlV3jHN0SzzHySiLVI&sensor=false"> 
    </script>
     <script type="text/javascript">
    function click()
    {
        
        document.getElementById('button2').click();
    }
    function refresh(){

    }
        setTimeout(
                
               'click()',2000);
    
    function initialize(lat,lng,name) {
      var mapOptions = {
                center: new google.maps.LatLng(lat, lng
),
                zoom: 12
        };
      var map = new google.maps.Map(document.getElementById("map-canvas"),
                mapOptions);
      var marker = new google.maps.Marker({
                position: new google.maps.LatLng(lat, lng),
                raiseOnDrag:true,
                title: name,
                clickable:true,
                zIndex: 1,
                map: map,
               
        });
google.maps.event.addListener(marker, 'click', function() { 
  marker.setIcon('images/net_1.jpg');                                    
    infowindow.open(map);
   
}); 
 
}
google.maps.event.addDomListener(window, 'load', initialize);
    </script>
   
   
 <div id="map-canvas">
                    
                   <%
             // String lat="",lon="";
              String empid=request.getParameter("empid");
              String tname=(String)session.getAttribute("tname");
              String ntname=tname+"_"+empid;
              
               
               Connection con=   factory.confac.getCon();
                Statement stmt= con.createStatement();
               ResultSet rs=  stmt.executeQuery("select * from "+ntname+" where id="+empid+"");
             
               System.out.println(""+ntname);
             if(rs.last())
              {
              out.println(empid+" "+ntname+" "+rs.getString(2)+" "+rs.getString(3));
                  
                %>
              
                <form>
              <input id="button2" type="button" value="Refresh" onclick="initialize('<%=rs.getString(2)%>','<%=rs.getString(3)%>','<%=rs.getString(1)%>')"/>
          </form>   
               
              
            
                       
                    <%
              }
                  %>
        
                         
                         
                    </div>
                            
                   
</body>
</html>
<%
        
    }
    else
    {
    response.sendRedirect("index.html");
    }
        
        %>