/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author acer
 */
public class updateServlet extends HttpServlet {

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
            String tname=(String) request.getSession().getAttribute("tname");
            String id=request.getParameter("id");
            String name=request.getParameter("name");
            String contact=request.getParameter("contact");
            String email=request.getParameter("email");
            String address=request.getParameter("addr");
            out.println(id+" "+name+" "+contact+" "+email+" "+address);
                  Connection con=factory.confac2.getCon();
                  Statement stmt= con.createStatement();
            stmt.executeUpdate("update "+tname+" set name='"+name+"', contact='"+contact+"',emailid='"+email+"',address='"+address+"' where empid='"+id+"'");
           Statement stmt1= con.createStatement();
            stmt1.executeUpdate("update worker set name='"+name+"', contact='"+contact+"',emailid='"+email+"',address='"+address+"' where empid='"+id+"'");
            
            request.setAttribute("status","Updated");
            RequestDispatcher rd= request.getRequestDispatcher("updateTeam.jsp");
            rd.forward(request, response);
            
            
            
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
