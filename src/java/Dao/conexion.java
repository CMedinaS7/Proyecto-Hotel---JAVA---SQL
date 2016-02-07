/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

/**
 *
 * @author Carlos Medina
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
public class conexion {
    public Connection conectar(){

        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection cn;
            cn = DriverManager.getConnection("jdbc:odbc:cupido","sa","");// hotel es el nombre del origen
            return cn;
        }
        catch (ClassNotFoundException ex){
            System.out.println("Error en Clase - " + ex); return null;
        }
        catch(SQLException ex){
            System.out.println("Error en ODBC - " + ex); return null;
        }
    }

    }
