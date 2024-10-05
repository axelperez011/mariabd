/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author system
 */
import java.sql.*;

public class conexion {
    Connection con;
    String url = "jdbc:mysql://127.0.0.1:3307/primaria";
    String usuario = "root";
    String contraseña = "mono";
    public Connection Conectar() throws ClassNotFoundException, SQLException{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,usuario,contraseña);
        }catch(ClassNotFoundException ex){
            System.out.println("Error al conectar la base de datos");
        }
        return con;
    }
}

