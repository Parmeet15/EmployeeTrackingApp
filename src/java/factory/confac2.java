/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package factory;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Sony
 */
public class confac2 {
     public static Connection getCon()
    {
    Connection con=null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
     con=     DriverManager.getConnection("jdbc:mysql://localhost:3306/trackemp","root","root");
   
  //    con=     DriverManager.getConnection("jdbc:mysql://mysql1000.mochahost.com:3306/netmax89_trackemp","netmax89_temp","netmax89_temp");
   
    
    }
    catch(Exception e)
    {
    }
    return con;
    
    }
    
}
