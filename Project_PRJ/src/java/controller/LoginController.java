/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import del.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author Nguyen Phuc
 */
public class LoginController extends HttpServlet {
   
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        Cookie[] cookie = request.getCookies();
        String username = null;
        String password = null;
        for(Cookie cooky : cookie){
            if(cooky.getName().equals("username")){
                username = cooky.getValue();
            }
            if(cooky.getName().equals("password")){
                password = cooky.getValue();
            }
            if(username != null && password != null){
                break;
            }
        }
        if(username != null && password != null){
            Account account = new DAO().login(username,password);
            if(account != null){
                request.getSession().setAttribute("account", account);
                response.sendRedirect("home");
                return;
            }
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
        String u = request.getParameter("username");
        String p =request.getParameter("password");
        String r = request.getParameter("remember") ;
        //tao 3 cookie: username,pass,remember
        Cookie cu = new Cookie("usernamer", u);
        Cookie cp = new Cookie("passwordr", p);
        Cookie cr = new Cookie("rememberr", r);
        if(r !=null){
            //co chon
            cu.setMaxAge(60*60*24);//7 ngay
            cp.setMaxAge(60*60*24);//7 ngay
            cr.setMaxAge(60*60*24);//7 ngay
            
        }else{
            // khong chon
            cu.setMaxAge(0);
            cp.setMaxAge(0);
            cr.setMaxAge(0);
        }
        //lau vao brower
        response.addCookie(cu);
        response.addCookie(cp);
        response.addCookie(cr);
        DAO d = new DAO();
        Account a = d.login(u, p);
        HttpSession session = request.getSession();
        if(a==null){
            // chua co
             request.setAttribute("error", "username or password invalid!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
           
        }else{
            //co tim thay
            // tao session
            session.setAttribute("account", a);
            response.sendRedirect("home");    
        }
//        Account account = new DAO().login(u, p);
//        if(account!=null){
//            if(r){
//                Cookie usernameCookie = new Cookie("username", u);
//                usernameCookie.setMaxAge(60*60*24);
//                Cookie passwordCookie = new Cookie("password", p);
//                passwordCookie.setMaxAge(60*60*24);
//                response.addCookie(usernameCookie);
//                response.addCookie(passwordCookie);
//            }
//            request.getSession().setAttribute("account",account);
//            response.sendRedirect("home");
//        }
//        else{
//            request.setAttribute("error", "Username or password incorrect");
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//        }
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
