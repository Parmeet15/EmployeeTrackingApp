/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 *
 * @author acer
 */
public class EmpLogin extends HttpServlet {

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
        System.out.println("Welcome on Server");
        try  {
            
            BufferedReader br = request.getReader();
            StringBuilder builder = new StringBuilder();
            String line = br.readLine();
            while(line!=null)
            {
                builder.append(line);
                line = br.readLine();
            }
            JSONParser parser = new JSONParser();
            JSONObject obj =(JSONObject) parser.parse(builder.toString());
            System.out.println(obj.get("email")+"       "+obj.get("pass"));
            String empemail = obj.get("email").toString();
            String emppass = obj.get("pass").toString();
            String tname=obj.get("tname").toString();
            
            Connection con= factory.confac2.getCon();
            Statement stmt=  con.createStatement();
            System.out.println("Table is"+tname);
            ResultSet rs=  stmt.executeQuery("select empid, password from "+tname);
            boolean valid=false;
           while(rs.next())
           {
               if(empemail.equalsIgnoreCase(rs.getString(1)) && emppass.equals(rs.getString(2)) )
               {
                   valid=true;
               }
               else
               {
                  valid=false;
               }
           }
           if(valid==true)
           {
           out.println("Valid");
           }
           else
           {
           out.println("Invalid");
           }
        }
        catch(Exception e)
        {
         System.out.println(e);
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
