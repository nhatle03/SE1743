/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.controller;

import dao.AccountDAO;
import dao.CategoryDAO;
import dao.ProductDAO;
import entity.Account;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 *
 * @author Shado
 */
@WebServlet(name = "RedirectPage", urlPatterns = {"/redirectpage"})
public class RedirectPage extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int page = Integer.valueOf(request.getParameter("page"));
            switch (page) {
                case 1:
                    request.setAttribute("page", 1);
                    request.getRequestDispatcher("admin-index.jsp").forward(request, response);
                    break;
                case 2:
                    ArrayList<Account> listAccount = new AccountDAO().getAll();
                    request.setAttribute("page", 2);
                    request.setAttribute("accounts", listAccount);
                    System.out.println(listAccount);
                    request.getRequestDispatcher("admin-index.jsp").forward(request, response);
                    break;
                case 3:
                    ArrayList<Product> listProduct = new ProductDAO().getAll();
                    ArrayList<Category> listCategory = (ArrayList<Category>) new CategoryDAO().getAll();
                    request.setAttribute("page", 3);
                    request.setAttribute("products", listProduct);
                    request.setAttribute("categories", listCategory);
                    request.getRequestDispatcher("admin-index.jsp").forward(request, response);
                    break;
                case 4:
                    request.setAttribute("page", 4);
                    request.getRequestDispatcher("admin-index.jsp").forward(request, response);
                    break;
                default:
                    break;
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
