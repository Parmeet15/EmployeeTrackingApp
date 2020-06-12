/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import java.util.Properties;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author acer
 */
public class ProblemServlet extends HttpServlet {

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
            try{

        
                         
                
            String description=request.getParameter("issue");
            String type=request.getParameter("type");
            String email=request.getParameter("email");
             int lid =Integer.parseInt(request.getParameter("lid"));
            
           String uname=null;
           boolean valid=false;
           String cname=null;
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	Date date = new Date();
	String raisedon=dateFormat.format(date);
           Connection con= factory.confac2.getCon();
             Statement stmt= con.createStatement();
             
             String q1="select empid from worker where emailid='"+email+"'";
                 PreparedStatement ps1= con.prepareStatement(q1);
           String empid="";
              ResultSet rs1=  stmt.executeQuery(q1);
              while(rs1.next())
           {
              empid=rs1.getString("empid");
                   
                            }
             
             
             String q="insert into tickets(status,raisedon,raisedby,type,description,lid) values (?,?,?,?,?,?)";
             PreparedStatement ps= con.prepareStatement(q);
              ps.setString(1,"New");
              ps.setString(2,raisedon);
              ps.setString(3, empid);
              ps.setString(4,type);
               ps.setString(5,description);
               ps.setInt(6,lid);
               int nor = ps.executeUpdate();
               
               
       
        request.setAttribute("status","Submitted");
            RequestDispatcher rd= request.getRequestDispatcher("Problem.jsp");
            rd.forward(request, response);
                 
        }
        catch(Exception e)
        {
        out.println(e);
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
