/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.PrintWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.io.*;
import java.net.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Geutzu
 */
public class Login extends HttpServlet {
   
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
       String uemail=request.getParameter("email");
       String upassw=request.getParameter("password");
       HttpSession session=request.getSession();
       RequestDispatcher dispatcher=null;
       try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tpiproject?useSSL=false","root","Eminescu1218");
           PreparedStatement pst= con.prepareStatement("select * from users1 where uemail = ? and upassw = ?");
           pst.setString(1, uemail);
           pst.setString(2, upassw);
           
           ResultSet rs=pst.executeQuery();
           
           if(rs.next()){ //daca user-ul este in baza de date se va trece in pagina principala
              session.setAttribute("name", rs.getString("username"));
              dispatcher=request.getRequestDispatcher("password.jsp"); //ne va duce in home page
           }
           else{ // daca nu este in baza de date ramanem in pagina de login
               request.setAttribute("status", "failed");
               dispatcher=request.getRequestDispatcher("index.jsp");
           }
           dispatcher.forward(request,response);
       }catch(Exception e){
           e.printStackTrace();
       }
    }
}
