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
public class LeavesServlet extends HttpServlet {

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

        
                         
                String dt=request.getParameter("date");
            String reason=request.getParameter("reason");
            String days=request.getParameter("days");
            String email=request.getParameter("email");
            String empid=request.getParameter("empid");
           String uname=null;
           boolean valid=false;
           String cname=null;
            
           Connection con= factory.confac2.getCon();
             Statement stmt= con.createStatement();
             String q="insert into leaves(userid,taken,date,reason) values (?,?,?,?)";
             PreparedStatement ps= con.prepareStatement(q);
              ps.setString(1,empid);
              ps.setString(2,days);
              ps.setString(3, dt);
              ps.setString(4,reason);
               int nor = ps.executeUpdate();
               
                String q1="select balanceleaves from worker where empid='"+empid+"'";
                 PreparedStatement ps1= con.prepareStatement(q1);
           int Newbalance=0;
              ResultSet rs1=  stmt.executeQuery(q1);
              while(rs1.next())
           {
              Newbalance=Integer.parseInt(rs1.getString("balanceleaves"))-Integer.parseInt(days);
                           
               
        
                            }
        String q2="update worker set balanceleaves='"+Newbalance+"' where empid='"+empid+"'";
        PreparedStatement ps2= con.prepareStatement(q2);
        int nor2 = ps2.executeUpdate();
        request.setAttribute("status","Submitted");
            RequestDispatcher rd= request.getRequestDispatcher("leaves.jsp");
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
