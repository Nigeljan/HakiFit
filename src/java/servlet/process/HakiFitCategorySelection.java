/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet.process;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Christine
 */
public class HakiFitCategorySelection extends HttpServlet {

    String cardioInit;
    String strengthTrainingInit;
    String yogaInit;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        cardioInit = config.getInitParameter("cardio");
        strengthTrainingInit = config.getInitParameter("strengthTraining");
        yogaInit = config.getInitParameter("yoga");
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String buttonValue = request.getParameter("button");
            
            if(cardioInit.equals(buttonValue)){
                request.setAttribute("buttonValue_fromp1", buttonValue);
                request.getRequestDispatcher("HakiFit_Category_Cardio.jsp").forward(request, response);
            }  
            
            if(strengthTrainingInit.equals(buttonValue)){
                request.setAttribute("buttonValue_fromp1", buttonValue);
                request.getRequestDispatcher("HakiFit_Category_StrengthTraining.jsp").forward(request, response);
            }  
            
            if(yogaInit.equals(buttonValue)){
                request.setAttribute("buttonValue_fromp1", buttonValue);
                request.getRequestDispatcher("HakiFit_Category_Yoga.jsp").forward(request, response);
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
