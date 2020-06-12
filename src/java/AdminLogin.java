/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
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
public class AdminLogin extends HttpServlet {

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
        try {
               
            String id=request.getParameter("email");
            String password=request.getParameter("pass");
           String uname=null;
           boolean valid=false;
           String cname=null;
            int mid=0;
           Connection con= factory.confac2.getCon();
             Statement stmt= con.createStatement();
              ResultSet rs=  stmt.executeQuery("select l.emailid,l.password,w.fname,w.company,w.mid from logincredentials l, manager w where l.emailid=w.email");
           while(rs.next())
           {
          if(id.equalsIgnoreCase(rs.getString(1)) && password.equals(rs.getString(2)))
          {
          uname=rs.getString(3);
          cname=rs.getString(4);
          mid=Integer.parseInt(rs.getString(5));
          valid=true;
          break;
          
          
          }       
               
           }
           if(valid==true)
           {
               HttpSession usession =request.getSession();
               usession.setAttribute("uname", uname);
               String tname=uname+"_"+cname;
               usession.setAttribute("tname", tname);
                usession.setAttribute("mid", (String.valueOf(mid)));
               response.sendRedirect("adminHome.jsp");
               
           
           
           }
           else
           {
           request.setAttribute("invalid","Invalid User ID or Password");
                RequestDispatcher rd= request.getRequestDispatcher("invalidlogin.jsp");
                   rd.forward(request, response);
           }
            
            
        }
        catch(Exception e)
        {
        out.println(e);
        }
        finally {
            out.close();
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
