/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.servlets;

import com.bsapp.manager.UserManager;
import com.bsapp.model.User;
import com.bsapp.utils.IConstants;
import com.bsapp.utils.StringUtils;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BEmerson
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet implements IConstants {

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

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (StringUtils.isStringEmpty(email) || StringUtils.isStringEmpty(password)) {
   PrintWriter out = response.getWriter();  
 out.println("<meta http-equiv='refresh' content='3;URL=Homepage.jsp'>");//redirects after 3 seconds
   out.println("<p style='color:red;'>User or password incorrect!</p>");
            RequestDispatcher rd = request.getRequestDispatcher("/Homepage.jsp");
            rd.forward(request, response);

        } else {

            UserManager uMgr = new UserManager();
            User user = uMgr.loginUser(email, password);
            if (user == null) {
                PrintWriter out = response.getWriter();  
 out.println("<meta http-equiv='refresh' content='3;URL=Homepage.jsp'>");//redirects after 3 seconds
   out.println("<p style='color:red;'>User or password incorrect!</p>");
                RequestDispatcher rd = request.getRequestDispatcher("/Homepage.jsp");
                rd.forward(request, response);
            } else {
                request.getSession(true).setAttribute(IConstants.SESSION_KEY_USER, user);
                if (user.getUserType().equals(IConstants.USER_TYPE_ADMIN)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/adminHome.jsp");
                    rd.forward(request, response);
                } else if (user.getUserType().equals(IConstants.USER_TYPE_GENERAL_USER)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/genUserHome.jsp");
                    rd.forward(request, response);
                } else {
                    PrintWriter out = response.getWriter();  
 out.println("<meta http-equiv='refresh' content='3;URL=Homepage.jsp'>");//redirects after 3 seconds
   out.println("<p style='color:red;'>User or password incorrect!</p>");
                    RequestDispatcher rd = request.getRequestDispatcher("/Homepage.jsp");
                    rd.forward(request, response);
                }
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
