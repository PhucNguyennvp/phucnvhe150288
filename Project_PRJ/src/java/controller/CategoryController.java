/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import del.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author Nguyen Phuc
 */
@WebServlet(name = "CategoryController", urlPatterns = {"/category"})
public class CategoryController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CategoryControler</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CategoryControler at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String cid_raw = request.getParameter("cid");
        int cid;
        try {
            cid = Integer.parseInt(cid_raw);
            DAO c = new DAO();
            List<Product> list = c.getProductByCateId(cid);
            List<Category> list1 = c.getAllCategory();
            request.setAttribute("listP", list);
            request.setAttribute("listC", list1);
            request.setAttribute("tag", cid);
            request.getSession().setAttribute("UrlHistory", "category?cid=" + cid);
            request.getRequestDispatcher("shop.jsp").forward(request, response);
        } catch (Exception e) {
        }

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
        String amount = request.getParameter("amount");
        String[] prices = amount.split(" - ");

        if (prices.length > 0) {
            prices[0] = prices[0].replace("$", "");
            prices[1] = prices[1].replace("$", "");
        }
        try {
            double from = Double.parseDouble(prices[0]);
            double to = Double.parseDouble(prices[1]);
//            PrintWriter out = response.getWriter();
//            out.print(amount);
            DAO c = new DAO();
            List<Product> list = c.getProductByPrice(from, to);
            List<Category> list1 = c.getAllCategory();
            if (list.size()==0) {
                request.setAttribute("error", "No Product!");
                request.setAttribute("listC", list1);
                request.getRequestDispatcher("shop.jsp").forward(request, response);
            } else {
                request.setAttribute("listP", list);
                request.setAttribute("listC", list1);
                request.setAttribute("amount", amount);
                request.getRequestDispatcher("shop.jsp").forward(request, response);
            }
        } catch (Exception e) {

        }

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
