/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Carlos Medina
 */
public class eliminar {

 public boolean eliminarCliente(String codigo){
        int filas;
        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call BorrarCliente(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Cliente 'Procedure'");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

  public boolean eliminarPersonal(String codigo){
        int filas;
        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call BorrarPersonal(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Personal 'Procedure'");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }

   public boolean eliminarHabitacion(String codigo){
        int filas;
        boolean resultado = false;
        Connection cn = null;
        try{
            conexion con=new conexion();
            cn=con.conectar();
            CallableStatement Cstmt;
            Cstmt=cn.prepareCall("{call BorrarHabitacion(?)}");
            Cstmt.setString(1, codigo);
            filas=Cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
               Cstmt.close();
            }
        }catch(SQLException ex){System.out.println("Error al Borrar Habitacion 'Procedure'");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;
    }
}
