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
import Beans.personal;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="moduloPersonal", urlPatterns={"/moduloPersonal"})
public class moduloPersonal extends HttpServlet {
   
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

        String nombres=request.getParameter("txtnombres");
        String apellidos=request.getParameter("txtapellidos");
        String telefono=request.getParameter("txttelefono");
        String DNI=request.getParameter("txtdni");
        String email=request.getParameter("txtemail");
        String direccion=request.getParameter("txtdireccion");
        String usuario=request.getParameter("txtusuario");
        String cargo=request.getParameter("cargo");
        String clave=request.getParameter("txtclave");
        String filtro=request.getParameter("txtfiltro");
        String codigo=request.getParameter("codigo");


        System.out.print(nombres);
        System.out.print(apellidos);
        System.out.print(telefono);
        System.out.print(DNI);
        System.out.print(email);
        System.out.print(direccion);
        System.out.print(usuario);
        System.out.print(cargo);
        System.out.print(clave);

        String grabar=request.getParameter("grabar");
        String modificar=request.getParameter("modificar");
        String eliminar=request.getParameter("eliminar");
        String buscar=request.getParameter("buscar");


        //Realizo el procedimiento para grabar en la BD
        if (grabar != null) {//Pregunto si ha presionado el boton grabar
         if(apellidos!=null && nombres!=null && DNI!=null && usuario!=null && clave != null ){//Verifico que los campos obligatorios se hayan llenado
        boolean resultado=registrar.insertPersonal(nombres, apellidos, DNI, direccion, telefono, cargo, email, usuario, clave);
        if (resultado){response.sendRedirect("intranet/personal.jsp?msg=ok");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("intranet/personal.jsp?msg=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("intranet/personal.jsp?msg=nulo");}
        }

        //Realizo el procedimiento para desactivar el personal
        if (eliminar != null){
        if(codigo!=null ){
            boolean resultado=borrar.eliminarPersonal(codigo);
        if (resultado){response.sendRedirect("intranet/personal.jsp?resp=5");}
        else{response.sendRedirect("intranet/personal.jsp?resp=6");}
        }
        }

        //Realizo el procedimiento para modificar el personal
       if (modificar != null) {
       if (codigo != null && apellidos != null && usuario!=null && clave!=null) {
           if(nombres!=null && DNI!=null && telefono!=null ){
            boolean resultado=modifica.modificaPersonal(codigo, nombres, apellidos, DNI, direccion, telefono, cargo, email, usuario, clave);
        if (resultado){response.sendRedirect("intranet/personal.jsp?resp=1");}
        else{response.sendRedirect("intranet/personal.jsp?resp=2");}
        }else{response.sendRedirect("intranetpersonal.jsp?msg=nulo");}

       }
       }

        //Realizo el procedimiento para buscar al personal
         if (buscar != null) {
            personal cli = null;
            cli = buscador.buscaPersonal(filtro);
            try{
            if (cli.getCodigo() != null) {
                response.sendRedirect("intranet/personal.jsp?resp=3&codigo=" + cli.getCodigo() + "&apellidos=" + cli.getApellidos() + "&cargo=" + cli.getCargo() + "&nombres=" + cli.getNombres() + "&direccion=" + cli.getDireccion() + "&dni=" + cli.getDni() +  "&telefono=" + cli.getTelefono() + "&email=" + cli.getEmail()+ "&usuario=" + cli.getUsuario() + "&clave=" + cli.getClave());
            }
            else
            {
                response.sendRedirect("intranet/personal.jsp?resp=4");
             }
            }catch(NullPointerException e){
               response.sendRedirect("intranet/personal.jsp?resp=4");
             }
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
