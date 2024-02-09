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
public class SituacionSenescytDAO {
    
private ConexionBd conecta;

//constructor
public  SituacionSenescytDAO(String jdbcURL, String jdbcUserName, String jdbcPassword) throws SQLException{
    //instancio la claseDB con los parametros para la conexion DB
    conecta = new ConexionBd(jdbcURL, jdbcUserName, jdbcPassword);
    
}

//zona de metodos insert
   public boolean registrarSituacionSenescyt(SituacionSenescyt op) {
        //zona de variables
        boolean estado = false; //variable para detectar el estado de la insertcion
        Statement stm;  //este objero interpreta las sentencias de sql para java(insert)
        //scrip de insercion en la BD desde java
        String sql = "insert into situacionsenescyt values (null,' "+
                op.getFechaIngreso()+" ',' "+op.getFechaSalida()+
                " ',' "+op.getModalidad()+" ',' "+op.getUnidad()+" ',' "+op.getPuesto()+
                " ',' "+op.getGrupoOcupacional()+ " ',' "+op.getUsuario_idCedula()+" ');";

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
        SituacionSenescyt objDAOoperacion;
        ArrayList<SituacionSenescyt> arrOperacion = new ArrayList();
        Statement stm;// para interpretar sql desde java
        ResultSet resOperacion;//para recibir el resultado de la base
        String sql = "SELECT * FROM proyecto.situacionsenescyt";
        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            while (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objDAOoperacion = new SituacionSenescyt(resOperacion.getInt("idSituacionSenescyt"),
                        resOperacion.getString("fechaIngreso"),
                        resOperacion.getString("fechaSalida"),
                        resOperacion.getString("modalidad"),
                        resOperacion.getString("unidad"),
                        resOperacion.getString("puesto"),
                        resOperacion.getString("grupoOcupacional"),
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
    public ArrayList SelecionarUno(int usuario_idCedula) {
        SituacionSenescyt objope;
        ArrayList<SituacionSenescyt> arrOperacion = new ArrayList();
        Statement stm;
        ResultSet resOperacion = null;
        String sql = "SELECT * FROM situacionsenescyt where usuario_idCedula = " + usuario_idCedula;

        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            if (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objope = new SituacionSenescyt(resOperacion.getInt("idSituacionSenescyt"),
                        resOperacion.getString("fechaIngreso"),
                        resOperacion.getString("fechaSalida"),
                        resOperacion.getString("modalidad"),
                        resOperacion.getString("unidad"),
                        resOperacion.getString("puesto"),
                        resOperacion.getString("grupoOcupacional"),
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
    public boolean Eliminar(int deleteId){
        //zona de variables
        
        boolean estado = false;
        Statement stm;
        String sql = "delete from situacionsenescyt where idSituacionSenescyt = "+deleteId;
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
    public boolean Editar(SituacionSenescyt objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update situacionsenescyt set modalidad = '" 
                + objupdate.getModalidad()
                + "' where IdSituacionSenescyt = " + objupdate.getIdSituacionSenescyt();
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
    public boolean EditarTODO(SituacionSenescyt objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update situacionsenescyt set fechaIngreso = '" + objupdate.getFechaIngreso() + "', "
                + " fechaSalida = '" + objupdate.getFechaSalida() + "',"
                + " modalidad = '" + objupdate.getModalidad() + "',"
                + " unidad = '" + objupdate.getUnidad() + "',"
                + " puesto = '" + objupdate.getPuesto() + "',"
                + " grupoOcupacional = '" + objupdate.getGrupoOcupacional()
                + "' where idSituacionSenescyt = "
                + objupdate.getIdSituacionSenescyt();
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
