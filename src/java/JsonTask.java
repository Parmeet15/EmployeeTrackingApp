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
public class JsonTask extends HttpServlet {

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
           System.out.println("Welcome on task server");
           
             BufferedReader  br=  request.getReader();
            StringBuilder bi=new StringBuilder();
            String line;
            while((line=br.readLine())!=null)
            {
            bi.append(line);
            
            }
            JSONParser parser=new JSONParser();
            JSONObject jobj=(JSONObject)    parser.parse(bi.toString());
            
            String empid=(String) jobj.get("empid");
            String tname=(String) jobj.get("tname");
            
             String ftname=tname+"_"+empid+"_task";
             System.out.println(tname);
             System.out.println("Welcome on server");
            StringBuilder sb=new StringBuilder();
            
              Connection con= factory.confac2.getCon();
              Statement stmt= con.createStatement();
            ResultSet rs= stmt.executeQuery("select task from "+ftname);
          rs.last();
           
           String task=rs.getString(1);
               
               
           out.println(task);
          
           System.out.println("Hello   "+task);
        }
        catch(Exception e)
        {
        System.out.println("Welcome on server"+e);
            
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
