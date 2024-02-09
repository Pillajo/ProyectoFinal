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
public class TrayectoriaLaboralDAO {
    
private ConexionBd conecta;

//constructor
public  TrayectoriaLaboralDAO(String jdbcURL, String jdbcUserName, String jdbcPassword) throws SQLException{
    //instancio la claseDB con los parametros para la conexion DB
    conecta = new ConexionBd(jdbcURL, jdbcUserName, jdbcPassword);
    
}

 //zona de metodos insert
    public boolean registrarTrayectoriaLaboral(TrayectoriaLaboral op) {
        //zona de variables
        boolean estado = false; //variable para detectar el estado de la insertcion
        Statement stm;  //este objero interpreta las sentencias de sql para java(insert)
        //scrip de insercion en la BD desde java
        String sql = "insert into trayectorialaboral values (null,' "
                + op.getTipoInstrucion() + " ',' " + op.getInstitucionOrganizacion()
                + " ',' " + op.getUnidadAdministrativa() + " ',' " + op.getPuesto()
                + " ',' " + op.getFechaIngreso() + " ',' " + op.getFechaSalida()
               + " ',' " + op.getModalidadIngreso()
                + " ',' " + op.getMotivoSalida() + " ',' " + op.getUsuario_idCedula() + " ');";
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
        TrayectoriaLaboral objDAOoperacion;
        ArrayList<TrayectoriaLaboral> arrOperacion = new ArrayList();
        Statement stm;// para interpretar sql desde java
        ResultSet resOperacion;//para recibir el resultado de la base
        String sql = "SELECT * FROM proyecto.trayectorialaboral";
        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            while (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objDAOoperacion = new TrayectoriaLaboral(resOperacion.getInt("idTrayectoriaLaboral"),
                        resOperacion.getString("tipoInstrucion"),
                        resOperacion.getString("institucionOrganizacion"),
                        resOperacion.getString("unidadAdministrativa"),
                        resOperacion.getString("puesto"),
                        resOperacion.getString("fechaIngreso"),
                        resOperacion.getString("fechaSalida"),
                        resOperacion.getString("modalidadIngreso"),
                        resOperacion.getString("motivoSalida"),
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
        TrayectoriaLaboral objope;
        ArrayList<TrayectoriaLaboral> arrOperacion = new ArrayList();
        Statement stm;
        ResultSet resOperacion = null;
        String sql = "SELECT * FROM trayectorialaboral where usuario_idCedula = " + id;

        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            if (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objope = new TrayectoriaLaboral(resOperacion.getInt("idTrayectoriaLaboral"),
                        resOperacion.getString("tipoInstrucion"),
                        resOperacion.getString("institucionOrganizacion"),
                        resOperacion.getString("unidadAdministrativa"),
                        resOperacion.getString("puesto"),
                        resOperacion.getString("fechaIngreso"),
                        resOperacion.getString("fechaSalida"),
                        resOperacion.getString("modalidadIngreso"),
                        resOperacion.getString("motivoSalida"),
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
        String sql = "delete from trayectorialaboral where idTrayectoriaLaboral = "+idDelet;
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
    public boolean Editar(TrayectoriaLaboral objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update trayectorialaboral set unidadAdministrativa = '" 
                + objupdate.getUnidadAdministrativa()
                + "' where idTrayectoriaLaboral = " + objupdate.getIdTrayectoriaLaboral();
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
    public boolean EditarTODO(TrayectoriaLaboral objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update trayectorialaboral set tipoInstrucion = '" + objupdate.getTipoInstrucion()+ "', "
                + " institucionOrganizacion = '" + objupdate.getInstitucionOrganizacion()+ "',"
                + " unidadAdministrativa = '" + objupdate.getUnidadAdministrativa()+ "',"
                + " puesto = '" + objupdate.getPuesto()+ "',"
                + " fechaIngreso = '" + objupdate.getFechaIngreso()+ "',"
                + " fechaSalida = '" + objupdate.getFechaSalida()+ "',"
                + " modalidadIngreso = '" + objupdate.getModalidadIngreso()+ "',"
                + " motivoSalida = '" + objupdate.getMotivoSalida()+ "',"
                   + " usuario_idCedula = '" + objupdate.getUsuario_idCedula()
                + "' where idTrayectoriaLaboral = "
                + objupdate.getIdTrayectoriaLaboral();
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
