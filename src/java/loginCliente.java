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

import Dao.buscar;
import Beans.cliente;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="loginCliente", urlPatterns={"/loginCliente"})
public class loginCliente extends HttpServlet {
   
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

        buscar busquedas=new buscar();
        cliente cli=null;
        String tipo=request.getParameter("tipo");
        String fini=request.getParameter("fini");
        String ffin=request.getParameter("ffin");
        String nh=request.getParameter("nh");
        String serc=request.getParameter("serc");
        String serr=request.getParameter("serr");
        String total=request.getParameter("total");
        String cliente=request.getParameter("cliente");
        String hab="";
        String usuario=request.getParameter("txtusuario");
        String clave=request.getParameter("txtclave");

        System.out.print(usuario);
        System.out.print(clave);

        if(Integer.parseInt(serc) > 0){
        serc="SI";
        }else{
        serc="NO";
        }

        if(Integer.parseInt(serr) > 0){
        serr="SI";
        }else{
        serr="NO";
        }

        if("SIMPLE".equals(tipo)){
        hab="H0001";
        }
        if("DOBLE".equals(tipo)){
        hab="H0002";
        }
        if("MATRIMONIAL".equals(tipo)){
        hab="H0003";
        }

        if(usuario != null && clave!= null){
        cli=busquedas.logeoCliente(usuario, clave);
        }

         if(usuario != null && clave!= null){
            cli=busquedas.logeoCliente(usuario, clave);
            try{
            if (cli.getCodigo() != null) {
                 response.sendRedirect("confirmarReserva.jsp?hab="+hab+"&fini="+fini+"&ffin="+ffin+"&nh="+nh+"&serc="+serc+"&serr="+serr+"&total="+total+"&cliente="+cli.getCodigo()+"&nombres="+cli.getNombres()+"&apellidos="+cli.getApellidos()+"&tipo="+tipo);
            }
            else
            {
                response.sendRedirect("logeoCliente.jsp?tipo="+tipo+"&fini="+fini+"&ffin="+ffin+"&nh="+nh+"&serc="+serc+"&serr="+serr+"&total="+total+"&cliente="+cliente);
             }
            }catch(NullPointerException e){
                response.sendRedirect("logeoCliente.jsp?tipo="+tipo+"&fini="+fini+"&ffin="+ffin+"&nh="+nh+"&serc="+serc+"&serr="+serr+"&total="+total+"&cliente="+cliente);
             }
            }

        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginCliente</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginCliente at " + request.getContextPath () + "</h1>");
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
