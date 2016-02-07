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
import Dao.insertar;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="confirmarReserva", urlPatterns={"/confirmarReserva"})
public class confirmarReserva extends HttpServlet {
   
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

        insertar confirmar=new insertar();

        String cliente=request.getParameter("cliente");
        String hab=request.getParameter("hab");
        String cantidad=request.getParameter("cantidad");
        String fini=request.getParameter("fini");
        String ffin=request.getParameter("ffin");
        String s1=request.getParameter("s1");
        String s2=request.getParameter("s2");

        System.out.print(s2);
        System.out.print(cliente);
        System.out.print(hab);
        System.out.print(cantidad);
        System.out.print(fini);
        System.out.print(ffin);
        System.out.print(s1);
        System.out.print(s2);

        if(cliente!=null){
        boolean resultado=confirmar.confirmarReserva(cliente, hab, cantidad, fini, ffin, s1, s2);
             response.sendRedirect("salir.jsp");
           }

        try {
          
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
