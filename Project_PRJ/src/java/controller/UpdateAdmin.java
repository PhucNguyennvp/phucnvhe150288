/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import del.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author Nguyen Phuc
 */
public class UpdateAdmin extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String id_raw = request.getParameter("pid");
        PrintWriter out = response.getWriter();
        
        try {
            int id  = Integer.parseInt(id_raw);
            out.print(id);
            DAO p = new DAO();
            Product product = p.getProductById(id);
            
            request.setAttribute("product", product);
            
        } catch (Exception e) {
        }
        request.getRequestDispatcher("update.jsp").forward(request, response);
        
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //processRequest(request, response);
        String id_raw1 = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String price_raw = request.getParameter("price");
        String tital = request.getParameter("title");
        String image = request.getParameter("image");
        String op_raw = request.getParameter("op");
        
        try {
            double price = Double.parseDouble(price_raw);
            int op = Integer.parseInt(op_raw);
            int id = Integer.parseInt(id_raw1);
            DAO p = new DAO();
            Product product = new Product(id, name, image, price, tital, description);
            
            p.update(product, op);
            response.sendRedirect("admin");
        } catch (Exception e) {
        }
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
