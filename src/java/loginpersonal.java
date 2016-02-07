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
import Dao.buscar;
import Beans.personal;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="loginpersonal", urlPatterns={"/loginpersonal"})
public class loginpersonal extends HttpServlet {
   
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
         String usuario=null;
        String clave=null;
        personal user;
        buscar buscando=new buscar();
        
            usuario=request.getParameter("usuario");
    
            clave=request.getParameter("clave");


            System.out.print(usuario);
            System.out.print(clave);
            

    
        user=buscando.logeo(usuario, clave);
        if (user!=null) {
            HttpSession sesion=request.getSession();
            sesion.setAttribute("nombres", user.getNombres());
            sesion.setAttribute("apellidos", user.getApellidos());
            sesion.setAttribute("dni",user.getDni());
            sesion.setAttribute("cargo",user.getCargo());
            response.sendRedirect("intranet/principal.jsp");
        }
        else {
            response.sendRedirect("intranet.jsp?msg=0");


        }
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginpersonal</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginpersonal at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
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
