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
public class modificar {
Connection cn;

public boolean modificaCliente(String codigo,String Nombres,String Apellidos,String Telefono,String dni,String email,String usuario,String clave){
        boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
         cstmt=cn.prepareCall("{call ModificarCliente(?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, Nombres);
        cstmt.setString(3, Apellidos);
        cstmt.setString(4, Telefono);
        cstmt.setString(5, dni);
        cstmt.setString(6, email);
        cstmt.setString(7, usuario);
        cstmt.setString(8, clave);
            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Cliente");}
        finally{
        return resultado;
        }
}
public boolean modificaPersonal(String codigo,String nombres,String apellidos,String dni,String direccion,String telefono, String cargo,String email,String usuario,String clave){
        boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
         cstmt=cn.prepareCall("{call ModificarPersonal(?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombres);
        cstmt.setString(3, apellidos);
        cstmt.setString(4, dni);
        cstmt.setString(5, direccion);
        cstmt.setString(6, telefono);
        cstmt.setString(7, cargo);
        cstmt.setString(8, email);
        cstmt.setString(9, usuario);
        cstmt.setString(10, clave);

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Cliente");}
        finally{
        return resultado;
        }
}






public boolean modificaHabitacion (String codigo,String tipo,String precio,String numero){
        boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.conectar();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarHabitacion(?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, tipo);
        cstmt.setString(3, precio);
        cstmt.setString(4, numero);
        filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Habitacion");}
        finally{
        return resultado;
        }
}}
