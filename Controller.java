

import java.io.PrintWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.*;
import java.net.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controller extends HttpServlet {
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        // input-urile din formularul de inregistrare
        String username=request.getParameter("name");
        String uemail=request.getParameter("email");
        String upassw=request.getParameter("pass");
        RequestDispatcher dispatcher=null;
        Connection con=null;
        
          if (username.isEmpty() || uemail.isEmpty() || upassw.isEmpty()) {
            // Handle the case of empty inputs
            request.setAttribute("status", "empty");
            dispatcher = request.getRequestDispatcher("signup.jsp");
            dispatcher.include(request, response);
            return; // Exit the method to prevent further execution
        }
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:8080/tpiproject?useSSL=false","root","Eminescu1218");
            PreparedStatement pst= con.prepareStatement("insert into users1(username,upassw,uemail) values(?,?,?)");
            pst.setString(1, username);
            pst.setString(2, upassw);
            pst.setString(3, uemail);
            
            int randuri=pst.executeUpdate();
            dispatcher=request.getRequestDispatcher("signup.jsp");  
            if(randuri >0){ //verifica ca am primit datele
              request.setAttribute("status", "success");
                 
            }
            else {
              request.setAttribute("status", "failed");
            }
            dispatcher.include(request, response);
    } catch(Exception e){
        e.printStackTrace();
    }finally{
        try{
            if(con!=null){
            con.close();
            
            }
        } catch(SQLException e){
           e.printStackTrace();
        }
    }
    
    }

}
