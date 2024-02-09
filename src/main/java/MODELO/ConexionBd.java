/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author josep
 */
public class ConexionBd {
    

    //zona de atributos
    private String jdbcURL;//guardar la cadena de conexion de la bd
    private String jdbcUSERName;//el nombre del usuarioadministrador de la bd
    private String jdbcPassword;//Contraseña de adminitracion DGBD --> MYSQL
    private Connection jdbcConnection;//objeto para gestionar el driver de  conexion a la bd
    //zona de constructor

    public ConexionBd(String jdbcURL, String jdbcUSERName, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUSERName = jdbcUSERName;
        this.jdbcPassword = jdbcPassword;
    }

    //zona de metodos
    //metodo para abrir la conexion
    public void connection() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("Conexion exitosa");

            } catch (ClassNotFoundException obje) {
                System.out.println("Error de conexion");
                throw new SQLException(obje);

            }
            jdbcConnection = (Connection) DriverManager.getConnection(jdbcURL, jdbcUSERName, jdbcPassword); //abro conexion a la bd

        }
    }

    //metodo para desconectar la bd
    public void discconect() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close(); //Cierro conexion bd
        }
    }

    //metodo para trabajar con la conexion BD
    public Connection getJdbcConnection() {
        return jdbcConnection;
    }
}

