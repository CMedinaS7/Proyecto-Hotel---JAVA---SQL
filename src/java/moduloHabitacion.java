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
import Dao.*;
import Beans.habitacion;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="moduloHabitacion", urlPatterns={"/moduloHabitacion"})
public class moduloHabitacion extends HttpServlet {
   
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

        insertar registrar=new insertar();
        modificar modifica=new modificar();
        eliminar borrar=new eliminar();
        buscar buscador=new buscar();

        String tipo=request.getParameter("tipo");
        String precio=request.getParameter("txtprecio");
        String numh=request.getParameter("txtnumero");
        String filtro=request.getParameter("txtfiltro");
        String codigo=request.getParameter("codigo");


        String grabar=request.getParameter("grabar");
        String modificar=request.getParameter("modificar");
        String eliminar=request.getParameter("eliminar");
        String buscar=request.getParameter("buscar");

         //Realizo el procedimiento para grabar en la BD
        if (grabar != null) {//Pregunto si ha presionado el boton grabar
         if(precio!=null && numh!=null){//Verifico que los campos obligatorios se hayan llenado
        boolean resultado=registrar.insertHabitacion(tipo, precio, numh);//Llamo al proceso insertar personal dandole los parametros (variables) y lo guardo en la variable resultado
        if (resultado){response.sendRedirect("intranet/habitacion.jsp?msg=ok");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("intranet/habitacion.jsp?msg=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("intranet/habitacion.jsp?msg=nulo");}
        }

        //Realizo el procedimiento para desactivar el personal
        if (eliminar != null){
        if(codigo!=null ){
            boolean resultado=borrar.eliminarHabitacion(codigo);
        if (resultado){response.sendRedirect("intranet/habitacion.jsp?resp=5");}
        else{response.sendRedirect("intranet/habitacion.jsp?resp=6");}
        }
        }

        //Realizo el procedimiento para modificar el personal
       if (modificar != null) {
       if (codigo != null) {
           if(tipo!=null && numh!=null ){
            boolean resultado=modifica.modificaHabitacion(codigo, tipo, precio, numh);
        if (resultado){response.sendRedirect("intranet/habitacion.jsp?resp=1");}
        else{response.sendRedirect("intranet/habitacion.jsp?resp=2");}
        }else{response.sendRedirect("intranet/habitacion.jsp?msg=nulo");}

       }
       }

        //Realizo el procedimiento para buscar al personal
         if (buscar != null) {
            habitacion cli = null;
            cli = buscador.buscaHabitacion(filtro);
            try{
            if (cli.getCodigo() != null) {
                response.sendRedirect("intranet/habitacion.jsp?resp=3&codigo=" + cli.getCodigo() + "&tipo=" + cli.getTipo() + "&precio=" + cli.getPrecio() + "&numero=" + cli.getNumero());
            }
            else
            {
                response.sendRedirect("intranet/cliente.jsp?resp=4");
             }
            }catch(NullPointerException e){
               response.sendRedirect("intranet/cliente.jsp?resp=4");
             }
            }


        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet moduloHabitacion</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet moduloHabitacion at " + request.getContextPath () + "</h1>");
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
