/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;
import Model.conexion;
import Vista.Login;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
/**
 *
 * @author Miguel
 */
public class consultas {
    boolean encontrado = false;
    
    public boolean ingresar(String u, String p) throws ClassNotFoundException{
       conexion c = new conexion();
         try {
           PreparedStatement consulta = c.Conectar().prepareStatement("SELECT * FROM usuarios "
                                                                      + "WHERE usuario ='"+u+"'AND clave = '"+p+"'");
           ResultSet resultado = consulta.executeQuery();
            if (resultado.next()) {
                encontrado = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Hubo un Error en la Consulta");
        }
         return encontrado;
    }
    
    public void guardarDatos(int id,String n, String b,int c1,int c2, int c3, int c4, int c5, int c6,int c7,int p,String s) throws ClassNotFoundException{
         conexion c = new conexion();
          try {
           PreparedStatement consulta = c.Conectar().prepareStatement("INSERT INTO asignaturas(id,cal_esp,cal_mat,cal_form,"
                   + "cal_art,cal_nat,cal_med,cal_fis,promedio,bimestre,nom_al,status)VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
           consulta.setInt(1, id);
           consulta.setInt(2, c1);
           consulta.setInt(3, c2);
           consulta.setInt(4, c3);
           consulta.setInt(5, c4);
           consulta.setInt(6, c5);
           consulta.setInt(7, c6);
           consulta.setInt(8, c7);
           consulta.setInt(9,p);
           consulta.setString(10,b);
           consulta.setString(11,n);
           consulta.setString(12,s);
           consulta.executeUpdate();
          JOptionPane.showMessageDialog(null,"DATOS GUARDADOS CORRECTAMENTE","AVISO",JOptionPane.PLAIN_MESSAGE);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"OCURRIO UN ERROR AL GUARDAR","ERROR",JOptionPane.ERROR_MESSAGE);

        }
    }
    
}
