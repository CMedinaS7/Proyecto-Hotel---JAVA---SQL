/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;
import java.util.Vector;
import Beans.*;
/**
 *
 * @author Carlos Medina
 */
public class buscar {
 Connection con;
    CallableStatement cstmt;
    ResultSet rs;


      public habitacion buscaHabitacion(String codigo) {
      try {
            habitacion   hab = new habitacion();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarHabitacion(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            hab.setCodigo(rs.getString(1));
            hab.setTipo(rs.getString(2));
            hab.setPrecio(rs.getString(3));
            hab.setNumero(rs.getString(4));
            return hab;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Habitacion 'Procedure'");
            return null;
        }
    }

   public cliente buscaCliente(String codigo) {
      try {
            cliente   cli = new cliente();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarCliente(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            cli.setCodigo(rs.getString(1));
            cli.setNombres(rs.getString(2));
            cli.setApellidos(rs.getString(3));
            cli.setTelefono(rs.getString(4));
            cli.setDni(rs.getString(5));
            cli.setEmail(rs.getString(6));
            cli.setUsuario(rs.getString(7));
            cli.setClave(rs.getString(8));
            return cli;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Cliente 'Procedure'");
            return null;
        }
    }

    public personal buscaPersonal(String codigo) {
      try {
            personal   per = new personal();
            conexion cn = new conexion();
            con = cn.conectar();
            CallableStatement Cstmt;
            Cstmt = con.prepareCall("{call BuscarPersonal(?)}");
            Cstmt.setString(1, codigo);
            ResultSet rs;
            rs = Cstmt.executeQuery();
            rs.next();
            per.setCodigo(rs.getString(1));
            per.setNombres(rs.getString(2));
            per.setApellidos(rs.getString(3));
            per.setDni(rs.getString(4));
            per.setDireccion(rs.getString(5));
            per.setTelefono(rs.getString(6));
            per.setCargo(rs.getString(7));
            per.setEmail(rs.getString(8));
            per.setUsuario(rs.getString(9));
            per.setClave(rs.getString(10));
            return per;
        } catch (SQLException Ex) {
            System.out.println("Error al Buscar Personal 'Procedure'");
            return null;
        }
    }


        public personal logeo(String usuario, String clave) {
        try {
            personal user = new personal();
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call LoginPersonal(?,?)}");
            cstmt.setString(1, usuario);
            cstmt.setString(2, clave);
            rs = cstmt.executeQuery();
            rs.next();
            user.setCodigo(rs.getString(1));
            user.setNombres(rs.getString(2));
            user.setApellidos(rs.getString(3));
            user.setDni(rs.getString(4));
            user.setDireccion(rs.getString(5));
            user.setTelefono(rs.getString(6));
            user.setCargo(rs.getString(7));
            user.setEmail(rs.getString(8));
            user.setUsuario(rs.getString(9));
            user.setClave(rs.getString(10));

            return user;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado Iniciar Secion para intranet");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

        public cliente logeoCliente(String usuario, String clave) {
        try {
            cliente cli = new cliente();
            conexion cn = new conexion();
            con = cn.conectar();
            cstmt = con.prepareCall("{call LoginCliente(?,?)}");
            cstmt.setString(1, usuario);
            cstmt.setString(2, clave);
            rs = cstmt.executeQuery();
            rs.next();

            cli.setCodigo(rs.getString(1));
            cli.setNombres(rs.getString(2));
            cli.setApellidos(rs.getString(3));
            cli.setDni(rs.getString(5));
            cli.setEmail(rs.getString(6));
            return cli;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado Iniciar Secion para cliente");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

}
