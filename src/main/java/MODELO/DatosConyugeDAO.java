/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author josep
 */
public class DatosConyugeDAO {

    private ConexionBd conecta;

//constructor
    public DatosConyugeDAO(String jdbcURL, String jdbcUserName, String jdbcPassword) throws SQLException {
        //instancio la claseDB con los parametros para la conexion DB
        conecta = new ConexionBd(jdbcURL, jdbcUserName, jdbcPassword);
    }

//zona de metodos insert
    public boolean registrarDatosConyuge(DatosConyuge op) {
        //zona de variables
        boolean estado = false; //variable para detectar el estado de la insertcion
        Statement stm;  //este objero interpreta las sentencias de sql para java(insert)
        //scrip de insercion en la BD desde java
        String sql = "insert into datosconyuge values (null,' "
                + op.getCedulaOpasaporte() + " ',' " + op.getNombres()
                + " ',' " + op.getApellidos() + " ',' " + op.getTipoRelacion()
                + " ',' " + op.getUsuario_idCedula() + " ');";
        try {
            //abro la conexion a la BD
            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            //ejecuto scrip de insert en la BD
            stm.execute(sql);
            estado = true;
            stm.close();
            //sierro la conexion
            conecta.discconect();
        } catch (SQLException ex) {
            estado = false;
            ex.printStackTrace();
        }

        return estado;
    }
      
    public ArrayList SelecionarTodo() {
        //zona objetos
        DatosConyuge objDAOoperacion;
        ArrayList<DatosConyuge> arrOperacion = new ArrayList();
        Statement stm;// para interpretar sql desde java
        ResultSet resOperacion;//para recibir el resultado de la base
        String sql = "SELECT * FROM proyecto.datosconyuge";
        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            while (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objDAOoperacion = new DatosConyuge(resOperacion.getInt("idDatosDelConyuge"),
                        resOperacion.getString("cedulaOpasaporte"),
                        resOperacion.getString("nombres"),
                        resOperacion.getString("apellidos"),
                        resOperacion.getString("tipoRelacion"),
                        resOperacion.getInt("usuario_idCedula"));

                arrOperacion.add(objDAOoperacion);//carga cada reguistro en el arrailist
            }
            stm.close();
            conecta.discconect();
        } catch (SQLException e) {
            e.printStackTrace();//capturo toda la traza del error en el 
        }
        return arrOperacion;
    }

    //metodo para selecionar un registro q cumpla con una condicion
    public ArrayList SelecionarUno(int id) {
        DatosConyuge objope;
        ArrayList<DatosConyuge> arrOperacion = new ArrayList();
        Statement stm;
        ResultSet resOperacion = null;
        String sql = "SELECT * FROM datosconyuge where usuario_idCedula = " + id;

        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            if (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objope = new DatosConyuge(resOperacion.getInt("idDatosDelConyuge"),
                        resOperacion.getString("cedulaOpasaporte"),
                        resOperacion.getString("nombres"),
                        resOperacion.getString("apellidos"),
                        resOperacion.getString("tipoRelacion"),
                        resOperacion.getInt("usuario_idCedula"));

                arrOperacion.add(objope);
            }
            stm.close();
            conecta.discconect();

        } catch (SQLException e) {
            e.printStackTrace();//capturo toda la traza del error en el 
        }
        return arrOperacion;
    }
    
      //metodo para borrar
    public boolean Eliminar(int idDelet){
        //zona de variables
        
        boolean estado = false;
        Statement stm;
        String sql = "delete from datosconyuge where idDatosDelConyuge = "+idDelet;
        try{
            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            stm.executeUpdate(sql);
            estado = true;
            stm.close();
            conecta.discconect();
        }
        catch(SQLException e){
            estado = false;
            e.printStackTrace();
        }
        return estado;
    }
      //METODO PARA MODIFICAR
    public boolean Editar(DatosConyuge objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update datosconyuge set tipoRelacion = '" 
                + objupdate.getTipoRelacion()
                + "' where idDatosDelConyuge = " + objupdate.getIdDatosDelConyuge();
        try {
            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            stm.executeUpdate(sql);
            estado = true;
            stm.close();
            conecta.discconect();
        } catch (SQLException err) {
            estado = false;
            err.printStackTrace();
        }
        return estado;
    }

    //METODO PARA MODIFICAR
    public boolean EditarTODO(DatosConyuge objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update datosconyuge set cedulaOpasaporte = '" + objupdate.getCedulaOpasaporte()+ "', "
                + " nombres = '" + objupdate.getNombres() + "',"
                + " apellidos = '" + objupdate.getApellidos()+ "',"
                + " tipoRelacion = '" + objupdate.getTipoRelacion() + "',"
        
                + " usuario_idCedula = '" + objupdate.getUsuario_idCedula()
                + "' where idDatosDelConyuge = "
                + objupdate.getIdDatosDelConyuge();
        try {

            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            stm.executeUpdate(sql);
            estado = true;
            stm.close();
            conecta.discconect();
        } catch (SQLException err) {
            estado = false;
            err.printStackTrace();
        }
        return estado;
    }
}
