/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet.process;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
            /* TODO output your page here. You may use following sample code. */
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            String errorUser = "";
            String errorPass = "";
            String errorLogin = "";

            boolean isValidUser = false;
            
            //logic if login input is correct or not
            if(usernameInit.equals(username) && passwordInit.equals(password)){
                isValidUser = true;
            }else{
                if(!usernameInit.equals(username)){
                    errorUser = "Username Incorrect";
                    errorLogin = errorUser;
                }else{
                    errorUser = "";
                }
                if(!passwordInit.equals(password)){
                    errorPass = "Password Incorrect";
                    errorLogin = errorPass;
                }else{
                    errorPass = "";
                }
                if(!usernameInit.equals(username) && !passwordInit.equals(password)){
                    errorLogin = errorUser + " and " + errorPass;
                }
            }
            
            if (isValidUser) {
                // If login is successful, redirect to success.jsp
                response.sendRedirect("HakiFit_MainPage.jsp");
            } else {
                // If login fails, redirect back to error.jsp
                request.setAttribute("ErrorMessage", errorLogin);
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
