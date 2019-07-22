/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import DAO.AlbumDAO;
import java.io.IOException;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Album;

/**
 *
 * @author BEmerson
 */
public class AlbumManagement extends HttpServlet {

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

        String appAction = request.getParameter("function");
        if (appAction != null) {
            if (appAction.equals("viewProductList")) {
                doProductList(request, response);
            } else if (appAction.equals("addProduct")) {
                RequestDispatcher rd = request.getRequestDispatcher("/addProduct.jsp");
                rd.forward(request, response);
            } else if (appAction.equals("submitAddProduct")) {
                submitAddProduct(request, response);
            } else if (appAction.equals("updateProduct")) {
                updateProduct(request, response);
            } else if (appAction.equals("submitUpdateProduct")) {
                submitUpdateProduct(request, response);
            } else if (appAction.equals("viewProduct")) {
                viewProduct(request, response);
            } else if (appAction.equals("viewAdminProductList")) {
                doAdminProductList (request, response);
               
            } 

        }

    }

    private void doProductList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AlbumDAO productDAO = new AlbumDAO();
        Vector<Album> pVect = productDAO.getAllAlbums();
        request.getSession(true).setAttribute("PRODUCT_LIST", pVect);
        RequestDispatcher rd = request.getRequestDispatcher("/productList.jsp");
        rd.forward(request, response);

    }

      private void doAdminProductList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AlbumDAO productDAO = new AlbumDAO();
        Vector<Album> pVect = productDAO.getAllAlbums();
        request.getSession(true).setAttribute("ADMINPRODUCT_LIST", pVect);
        RequestDispatcher rd = request.getRequestDispatcher("/AdminproductList.jsp");
        rd.forward(request, response);

    }

    
    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AlbumDAO productDAO = new AlbumDAO();
        String id = request.getParameter("id");
        Album currentProduct = productDAO.getAlbum(Long.parseLong(id));

        request.getSession().setAttribute("CURRENT_PRODUCT", currentProduct);

        RequestDispatcher rd = request.getRequestDispatcher("/updateProduct.jsp");
        rd.forward(request, response);

    }

    private void viewProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AlbumDAO productDAO = new AlbumDAO();
        String id = request.getParameter("id");
        Album currentProduct = productDAO.getAlbum(Long.parseLong(id));

        request.getSession().setAttribute("CURRENT_PRODUCT", currentProduct);

        RequestDispatcher rd = request.getRequestDispatcher("/viewProduct.jsp");
        rd.forward(request, response);

    }

  private void submitAddProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Album newProduct = new Album();

        String id = request.getParameter("id");
        newProduct.setId(Long.parseLong(id));
        newProduct.setName(request.getParameter("name"));
        newProduct.setCategory(request.getParameter("category"));
        newProduct.setDescription(request.getParameter("description"));
         newProduct.setCategory(request.getParameter("availability"));
        newProduct.setDescription(request.getParameter("price"));
        newProduct.setImageURL(request.getParameter("imageurl"));

        AlbumDAO pDAO = new AlbumDAO();
        pDAO.addAlbum(newProduct);

        RequestDispatcher rd = request.getRequestDispatcher("/productList.jsp");
        rd.forward(request, response);

    }

    
    private void submitUpdateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Album updateProduct = new Album();

        String id = request.getParameter("id");
        updateProduct.setId(Long.parseLong(id));
        updateProduct.setName(request.getParameter("name"));
        updateProduct.setCategory(request.getParameter("category"));
        updateProduct.setDescription(request.getParameter("description"));
        updateProduct.setAvailability(request.getParameter("availability"));
        updateProduct.setPrice(Integer.parseInt(request.getParameter("price")));
        updateProduct.setImageURL(request.getParameter("imageurl"));

        AlbumDAO pDAO = new AlbumDAO();
        pDAO.updateAlbum(updateProduct);

        RequestDispatcher rd = request.getRequestDispatcher("/productList.jsp");
        rd.forward(request, response);

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
