/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
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
public class RegisterServlet extends HttpServlet {

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

        
                            String fname=request.getParameter("fname");
                            String lname=request.getParameter("lname");
                            String eid=request.getParameter("email");
                            String dob=request.getParameter("dob");
                            String gender=request.getParameter("gender");
                            String comp=request.getParameter("company");
                            String comp_pro=request.getParameter("cprofile");
                            String comp_addr=request.getParameter("caddress");
                            String comp_loc=request.getParameter("cloc");
                            String comp_branch=request.getParameter("cbranch");
                            String cont=request.getParameter("contact");
                            String pswd=request.getParameter("pass");
                            String repswd=request.getParameter("cpass");
                            String smp=request.getParameter("mperiod");
                            List l=new LinkedList();
                            if(fname.length()==0)
                            {
                                l.add("1");
                            }
                           if(lname.length()==0)
                            {
                                l.add("2");
                            }
                           if(eid.length()==0)
                            {
                                l.add("3");
                            }
                          if(dob.length()==0)
                            {
                                l.add("4");
                            }
                           if(gender.length()==0 || gender.equalsIgnoreCase("select"))
                            {
                                l.add("5");
                            }
                          if(comp.length()==0)
                            {
                                l.add("6");
                            }
                           if(comp_pro.length()==0)
                            {
                                l.add("7");
                            }
                           if(comp_addr.length()==0)
                            {
                                l.add("8");
                            }
                           if(cont.length()==0)
                            {
                                l.add("9");
                            }
                           if(pswd.length()==0)
                            {
                                l.add("10");
                            }
                           if(repswd.length()==0)
                            {
                                l.add("11");
                            }
                           if(smp.length()==0||smp.equalsIgnoreCase("select membership period"))
                            {
                                l.add("12");
                            }
                           if(!pswd.equals(repswd))
                           {
                           l.add("13");
                           }
                            if(!l.isEmpty())
                            {
                                request.setAttribute("error", l);
                                RequestDispatcher rd= request.getRequestDispatcher("register.jsp");
                                rd.forward(request, response);
                             }
                            else
                            {
                               
            Properties cdata=new Properties();
            cdata.put("fname",fname);
            cdata.put("lname",lname);
            cdata.put("email",eid);
            cdata.put("dob",dob);
            cdata.put("gender",gender);
            cdata.put("cname",comp);
            cdata.put("cprofile",comp_pro);
            cdata.put("caddress",comp_addr);
             cdata.put("cloc",comp_loc);
              cdata.put("cbranch",comp_branch);
            cdata.put("contact",cont);
            cdata.put("pass",pswd);
            cdata.put("repass",repswd);
            cdata.put("mperiod",smp);
                            
                 HttpSession regsession= request.getSession();
               regsession.setAttribute("clientdata", cdata);
        
        response.sendRedirect("confirmPayment.jsp");
        
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
