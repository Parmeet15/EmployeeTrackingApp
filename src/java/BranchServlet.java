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
public class BranchServlet extends HttpServlet {

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

                
                
                
                
        String branch=request.getParameter("branch");
            int  mid=Integer.parseInt(request.getParameter("mid"));
           int  lid=Integer.parseInt(request.getParameter("lid"));
           String uname=null;
           boolean valid=false;
           String cname=null;
            
           Connection con= factory.confac2.getCon();
             Statement stmt= con.createStatement();
             String branch1="";
              String q4="select bname from branch  where  lid='"+lid+"'";
                 PreparedStatement ps4= con.prepareStatement(q4);
           int count=0;
              ResultSet rs4=  stmt.executeQuery(q4);
              while(rs4.next())
           {
            branch1=rs4.getString(1);
                            
                          
             
             if(branch1.toLowerCase().equals(branch.toLowerCase()))
             {
                 count=1;
                request.setAttribute("status","Branch already exists in system for the selected Location. Please add a new branch");
            RequestDispatcher rd= request.getRequestDispatcher("branch.jsp");
            rd.forward(request, response);
                 break;
             }
             }
                            
                    if(count==0){      
            String q6="insert into branch(bname,lid) values (?,?)";
             PreparedStatement ps6= con.prepareStatement(q6);
              ps6.setString(1,branch);
              ps6.setInt(2,lid);
             
               int nor6 = ps6.executeUpdate();
               if(nor6>=1)
             {
                  request.setAttribute("success","Branch added in system. ");
            RequestDispatcher rd= request.getRequestDispatcher("branch.jsp");
            rd.forward(request, response);
             }
              
                    }
                 request.setAttribute("failure","Branch not added in system. ");
            RequestDispatcher rd= request.getRequestDispatcher("branch.jsp");
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

    
    


