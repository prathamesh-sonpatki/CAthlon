/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author chaitanya
 */
@WebServlet(name="evalres", urlPatterns={"/evalres"})
public class evalres extends HttpServlet {

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

        PrintWriter out = response.getWriter();
        try {

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Evaluating !</title>");
            out.println("</head>");
            out.println("<body>");

            HttpSession session = request.getSession();
            Double Score;
             Score = (Double) session.getAttribute("Score");


            int bull = 1;

           
            String ans;
            
            
            if(true)
            {
                bull = bull * 2;
                
                
            }
            session.setAttribute("attempt", Integer.parseInt(session.getAttribute("attempt").toString())+1);
            if(request.getParameter("options").toString().equals("a"))
                ans = "a";
            else  if(request.getParameter("options").toString().equals("b"))
                ans ="b";
            else  if(request.getParameter("options").toString().equals("c"))
                ans ="c";
            else
                ans="d";
            out.print(ans);
            out.print(ans.equals(session.getAttribute("answer")));
            int clevel=Integer.parseInt(session.getAttribute("currentLevel").toString());
            if(clevel == 1)
               session.setAttribute("q1index", Integer.parseInt(session.getAttribute("q1index").toString())+1);
            else if(clevel == 2)
                session.setAttribute("q2index", Integer.parseInt(session.getAttribute("q2index").toString())+1);

            else
                session.setAttribute("q3index", Integer.parseInt(session.getAttribute("q3index").toString())+1);
            out.println(ans);
            out.println(session.getAttribute("answer"));

            if(ans.equals(session.getAttribute("answer")))
            {
                out.print("Correct Answer");
                session.setAttribute("correct", Integer.parseInt(session.getAttribute("correct").toString())+1);


                if(clevel == 1){
                    Score  += 2*bull;
                session.setAttribute("q1", Integer.parseInt(session.getAttribute("q1").toString())+1);
                }
                else if(clevel == 2){
                    session.setAttribute("q2", Integer.parseInt(session.getAttribute("q2").toString())+1);
                    Score+=3*bull;}
                else{
                    session.setAttribute("q3", Integer.parseInt(session.getAttribute("q3").toString())+1);
                    Score+=5*bull;
                }

                session.setAttribute("correctCount", Integer.parseInt(session.getAttribute("correctCount").toString())+1);
                if (clevel !=3 && Integer.parseInt(session.getAttribute("correctCount").toString()) == 2)
                {
                    session.setAttribute("currentLevel", clevel+1);
                    session.setAttribute("correctCount", 0);
                }





            }
            else
            {

                  session.setAttribute("correctCount", 0);
                   if(clevel == 1){
                    Score  -= 1*bull;

                }
                else if(clevel == 2){

                    Score-=2*bull;}
                else{

                    Score-=3*bull;
                }
                  if (clevel != 1){
                    session.setAttribute("currentLevel", clevel - 1);

                }
            session.setAttribute("incorrect", Integer.parseInt(session.getAttribute("incorrect").toString())+1);
            }


                int index = Integer.parseInt(session.getAttribute("index").toString());
                index++;
                session.setAttribute("index", index);

                session.setAttribute("Score", Score);
                session.setAttribute("mins",request.getParameter("mins"));
                session.setAttribute("secs",request.getParameter("secs"));

                  response.sendRedirect("question.jsp");
                out.println("</body>");
            out.println("</html>");

        } finally {
            out.close();
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
        processRequest(request, response);
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
        processRequest(request, response);
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
