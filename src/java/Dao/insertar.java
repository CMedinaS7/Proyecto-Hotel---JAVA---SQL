/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;
/**
 *
 * @author Carlos Medina
 */
public class insertar {
 public boolean insertCliente(String Nombres,String Apellidos,String Telefono,String dni,String email,String usuario,String clave){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarCliente(?,?,?,?,?,?,?)}");
        cstmt.setString(1, Nombres);
        cstmt.setString(2, Apellidos);
        cstmt.setString(3, Telefono);
        cstmt.setString(4, dni);
        cstmt.setString(5, email);
        cstmt.setString(6, usuario);
        cstmt.setString(7, clave);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar cliente Procedure");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

  public boolean insertReserva(String Cliente,String Personal,String Habitacion,String fecha,String fechainicio,String fechafin,String s1,String s2,String s3,String s4,String s5,String s6){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ReservarHabitacion(?,?,?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, Cliente);
        cstmt.setString(2, Personal);
        cstmt.setString(3, Habitacion);
        cstmt.setString(4, fecha);
        cstmt.setString(5, fechainicio);
        cstmt.setString(6, fechafin);
        cstmt.setString(7, s1);
        cstmt.setString(8, s2);
        cstmt.setString(9, s3);
        cstmt.setString(10, s4);
        cstmt.setString(11, s5);
        cstmt.setString(12, s6);

        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar cliente");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

   public boolean insertPersonal(String nombres,String apellidos,String dni,String direccion,String telefono, String cargo,String email,String usuario,String clave){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarPersonal(?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, nombres);
        cstmt.setString(2, apellidos);
        cstmt.setString(3, dni);
        cstmt.setString(4, direccion);
        cstmt.setString(5, telefono);
        cstmt.setString(6, cargo);
        cstmt.setString(7, email);
        cstmt.setString(8, usuario);
        cstmt.setString(9, clave);

        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Personal");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

   public boolean insertHabitacion(String tipo,String precio,String numero){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call RegistrarHabitacion(?,?,?)}");
        cstmt.setString(1, tipo);
        cstmt.setString(2, precio);
        cstmt.setString(3, numero);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Habitacion");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

    public boolean confirmarReserva(String cliente,String hab,String cantidad,String fini,String ffin,String s1,String s2){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call confirmarReserva(?,?,?,?,?,?,?)}");
        cstmt.setString(1, cliente);
        cstmt.setString(2, hab);
        cstmt.setString(3, cantidad);
        cstmt.setString(4, fini);
        cstmt.setString(5, ffin);
        cstmt.setString(6, s1);
        cstmt.setString(7, s2);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al confirmar reserva");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

}
