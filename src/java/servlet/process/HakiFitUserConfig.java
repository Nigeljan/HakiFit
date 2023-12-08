/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet.process;

import error.AuthenticationException;
import error.NullValueException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HakiFitUserConfig extends HttpServlet {

    String usernameInit;
    String passwordInit;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        usernameInit = config.getInitParameter("username");
        passwordInit = config.getInitParameter("password");
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            try{
                if(usernameInit.equals(username) && passwordInit.equals(password)){
                    HttpSession session = request.getSession();
                    session.setAttribute("username",username);
                    session.setAttribute("password",password);
                    response.sendRedirect("HakiFit_MainPage.jsp");
                }
                
                if (username == null || username.isEmpty() || password == null || password.isEmpty()) {
                    throw new NullValueException("Username or password is null");
                }
                
                if (!usernameInit.equals(username) || !passwordInit.equals(password)) {
                    throw new AuthenticationException("Invalid username or password");
                }
                
            } catch(NullValueException e){   
                request.setAttribute("errorMessage", e.getMessage());
                RequestDispatcher dispatcher = request.getRequestDispatcher("error_nullvalue.jsp");
                dispatcher.forward(request, response);
            } catch(AuthenticationException e){   
                request.setAttribute("errorMessage", e.getMessage());
                RequestDispatcher dispatcher = request.getRequestDispatcher("error_authentication.jsp");
                dispatcher.forward(request, response);
            } 
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
