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
import javax.servlet.http.HttpSession;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="RegistrarCliente", urlPatterns={"/RegistrarCliente"})
public class RegistrarCliente extends HttpServlet {
   
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

        String Nombres=request.getParameter("txtnombres");
        String Apellidos=request.getParameter("txtapellidos");
        String Telefono=request.getParameter("txttelefono");
        String DNI=request.getParameter("txtdni");
        String Email=request.getParameter("txtemail");
        String usuario=request.getParameter("txtusuario");
        String clave=request.getParameter("txtclave");
        String filtro=request.getParameter("txtfiltro");


        insertar insert=new insertar();

        if(filtro !=null){
         if(Nombres!=null && Apellidos!=null && Telefono!=null && DNI != null && Email != null && usuario != null && clave != null ){
            boolean resultado=insert.insertCliente(Nombres, Apellidos, Telefono, DNI, Email, usuario, clave);
        if (resultado){response.sendRedirect("index.jsp?msg=ok");}
        else{response.sendRedirect("index.jsp#camere?msg=falso");}
        }else{response.sendRedirect("index.jsp#camere?msg=nulo");}}
        

        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrarCliente</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarCliente at " + request.getContextPath () + "</h1>");
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
