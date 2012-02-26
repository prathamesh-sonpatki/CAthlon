/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author chaitanya
 */
public class userlogin extends HttpServlet {

    private HttpSession httpSession;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, IllegalAccessException {
        response.setContentType("text/html;charset=UTF-8");

        String receipt = request.getParameter("receipt");
        String pname1 = request.getParameter("pname1");
        String pname2 = request.getParameter("pname2");
        String college = request.getParameter("college");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String level = request.getParameter("level");

        PrintWriter out = response.getWriter();
        Connection con = null;
        String database = "CAthlon"; // Name of database
        String user = "root"; //
        String password = "prathamesh";
        String url = "jdbc:mysql://localhost:3306/" + database;
        try {

            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection(url, user, password);


            String sql =
                    "insert into UserInformation values (?,?,?,?,?,?,?)";
            PreparedStatement pst =
                    con.prepareStatement(sql);
            pst.setString(1, receipt);
            pst.setString(2, pname1);
            pst.setString(3, pname2);
            pst.setString(4, college);
            pst.setString(5, email);
            pst.setString(6, contact);
            pst.setString(7, level);
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);

            int numRowsChanged = pst.executeUpdate();
            httpSession = request.getSession(true);
            httpSession.setAttribute("Participant1", pname1);
            httpSession.setAttribute("Participant2", pname2);
            httpSession.setAttribute("Receipt", receipt);
            httpSession.setAttribute("Score", 0.0);
            httpSession.setAttribute("mins", "2");
            httpSession.setAttribute("secs", 0);
            httpSession.setAttribute("level", level);
            httpSession.setAttribute("correctCount", 0);
            httpSession.setAttribute("currentLevel", 1);
            httpSession.setAttribute("q1", 0);
            httpSession.setAttribute("q2", 0);
            httpSession.setAttribute("q3", 0);
            httpSession.setAttribute("attempt", 0);
            httpSession.setAttribute("correct", 0);
            httpSession.setAttribute("incorrect", 0);
            httpSession.setAttribute("q1index", 1);
            httpSession.setAttribute("q2index", 1);
            httpSession.setAttribute("q3index", 1);
            httpSession.setAttribute("offset", 6);
            httpSession.setAttribute("flag", 0);
            httpSession.setAttribute("bullFlag", 0);
            httpSession.setAttribute("index", 1);

            // show that the new account has been created
            response.sendRedirect("question.jsp");
            pst.close();
        } catch (ClassNotFoundException e) {
            out.println("Couldn't load database driver: "
                    + e.getMessage());
        } catch (SQLException e) {
            out.println("SQLException caught: "
                    + e.getMessage());
        } catch (Exception e) {
            out.println(e);
        } finally {
            // Always close the database connection.
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ignored) {
                out.println(ignored);
            }

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
        try {
            processRequest(request, response);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
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
