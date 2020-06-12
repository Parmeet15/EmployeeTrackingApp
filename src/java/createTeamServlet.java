/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
//import java.util.Properties;
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author acer
 */
public class createTeamServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String empid=null;
            String id=request.getParameter("empid");
            String name=request.getParameter("name");
            String contact=request.getParameter("contact");
            String email=request.getParameter("emailid");
            String address=request.getParameter("address");
             String hrsal=request.getParameter("sal");
              String lid=request.getParameter("lid");
            String password = request.getParameter("password");
            List l=new LinkedList();
                            if(id.length()==0)
                            {
                                l.add("1");
                            }
                           if(name.length()==0)
                            {
                                l.add("2");
                            }
                           if(contact.length()==0)
                            {
                                l.add("3");
                            }
                          if(email.length()==0)
                            {
                                l.add("4");
                            }
                          if(address.length()==0)
                            {
                                l.add("5");
                            }
                          if(password.length()==0)
                          {
                              l.add("6");
                          }
                            if(!l.isEmpty())
                            {
                                request.setAttribute("error", l);
                                RequestDispatcher rd= request.getRequestDispatcher("createTeam.jsp");
                                rd.forward(request, response);
                             }
                            if(l.isEmpty())
            {
            String tname=(String) request.getSession().getAttribute("tname");
            empid=tname+"_"+id;
            
            try {
              Connection con= factory.confac2.getCon();
              Statement stmt=  con.createStatement();
             String q="insert into "+tname+"(empid, name, contact, emailid, address, password) values(?,?,?,?,?,?)";
            
              PreparedStatement ps= con.prepareStatement(q);
              ps.setString(1,id);
              ps.setString(2,name);
              ps.setString(3,contact);
              ps.setString(4,email);
              ps.setString(5,address);
              ps.setString(6, password);
              int nor = ps.executeUpdate();
               String q1="insert into worker(empid, name, contact, emailid, address, password,balanceleaves,hoursalary,lid) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps1= con.prepareStatement(q1);
              ps1.setString(1,id);
              ps1.setString(2,name);
              ps1.setString(3,contact);
              ps1.setString(4,email);
              ps1.setString(5,address);
              ps1.setString(6, password);
              ps1.setString(7, "20");
              ps1.setString(8, hrsal);
               ps1.setString(9, lid);
              int nor1 = ps1.executeUpdate();
               String q2="insert into logincredentials(emailID,Password) values(?,?)";
                   PreparedStatement ps2=  con.prepareStatement(q2);
                    ps2.setString(1, email);
                    ps2.setString(2, password);   
                     int nor2= ps2.executeUpdate();
                    
              if(nor!=0)
              {
                out.println("Employee Added Successfully");
              }
            
          
            
        }
        catch(Exception e)
        {
            out.println(e);
        }    
		 
        try{
        
              Connection con= factory.confac2.getCon();
              Statement stmt=  con.createStatement();
             
          stmt.executeUpdate("create table "+tname+"_"+id+"(id varchar(20),lat varchar(100),lon varchar(100), time varchar(50))");
        
        }
        catch(Exception e)
        {
        out.println(e);
        }
           try{
        
              Connection con= factory.confac2.getCon();
              Statement stmt=  con.createStatement();
             
          stmt.executeUpdate("create table "+tname+"_"+id+"_task(id varchar(20), time varchar(50),task varchar(1000))");
        
        }
        catch(Exception e)
        {
        out.println(e);
        }
//     
         
//                final String username = "navisk39@gmail.com";
//		final String password = "n1v4eepk1ur";
// 
//		Properties props = new Properties();
//		props.put("mail.smtp.auth", "true");
//		props.put("mail.smtp.starttls.enable", "true");
//		props.put("mail.smtp.host", "smtp.gmail.com");
//		props.put("mail.smtp.port", "587");
// 
//		Session session1 = Session.getInstance(props,
//		  new javax.mail.Authenticator() {
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(username, password);
//			}
//		  });
// 
//		try {
// 
//			Message message = new MimeMessage(session1);
//			message.setFrom(new InternetAddress(username));
//			message.setRecipients(Message.RecipientType.TO,
//				InternetAddress.parse(email));
//			message.setSubject("Welcome in Track Employee System");
//			message.setText("Dear "+name+","
//				+ "\n\n Welcome in  Our Task System"+"\n"
//                                + "Now you can get latest Details of our policy on your Phon"+"\n"
//                                + "\n"
//                                + "Kindly Download our App from this link"
//                                + "Your id is "+empid
//                                
//                                + "Thanx for Registration"+"\n"
//                                + "Regards,"+"\n"
//                                + "Employee Task System");
// 
//			Transport.send(message);
// 
//			System.out.println("Done");
// 
//		} catch (MessagingException e) {
//			out.println(e);
//		}
            request.setAttribute("status","Created");
            RequestDispatcher rd=request.getRequestDispatcher("createTeam.jsp");
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
