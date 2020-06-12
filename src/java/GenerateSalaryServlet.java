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
public class GenerateSalaryServlet extends HttpServlet {

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

         String empid="";
           String account="";
            String Salary="";
           String hoursalary="";
           String hours="";
           String email=request.getParameter("email");
           Connection con= factory.confac2.getCon();
             Statement stmt= con.createStatement();
             
             String q1="select empid,hoursalary,hours,account from worker where emailid='"+email+"'";
                 PreparedStatement ps1= con.prepareStatement(q1);
          
              ResultSet rs1=  stmt.executeQuery(q1);
              while(rs1.next())
           {
              empid=rs1.getString("empid");
              hoursalary=rs1.getString("hoursalary");
              hours=rs1.getString("hours");
                  account=rs1.getString("account"); 
                            }
              if(account.equals("0"))
              {
                  request.setAttribute("acct","No account added in your profile. Please add an account to get salary");
            RequestDispatcher rd= request.getRequestDispatcher("Salary.jsp");
            rd.forward(request, response);
              }
              
              else
              {
                  Salary=Integer.toString(Integer.parseInt(hoursalary)*Integer.parseInt(hours));
                  
                  
                  DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	Date date = new Date();
	String dt=dateFormat.format(date);
                  String q="insert into salary(empid,salary_credited,date) values(?,?,?)";
             PreparedStatement ps= con.prepareStatement(q);
              ps.setString(1,empid);
              ps.setString(2,Salary);
             ps.setString(3,dt);
               int nor = ps.executeUpdate();
                  
               
               String q2="update worker set hours='0' where empid=?";
             PreparedStatement ps2= con.prepareStatement(q2);
              ps2.setString(1,empid);
                         
               int nor2 = ps2.executeUpdate();
               
               request.setAttribute("success",Salary);
            RequestDispatcher rd= request.getRequestDispatcher("Salary.jsp");
            rd.forward(request, response);

               
              }
              
             
             
               
                
                         
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
