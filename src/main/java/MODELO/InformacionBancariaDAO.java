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
public class InformacionBancariaDAO {
    
private ConexionBd conecta;

//constructor
public  InformacionBancariaDAO(String jdbcURL, String jdbcUserName, String jdbcPassword) throws SQLException{
    //instancio la claseDB con los parametros para la conexion DB
    conecta = new ConexionBd(jdbcURL, jdbcUserName, jdbcPassword);
    
}

//zona de metodos insert
    public boolean registrarInformacionBancaria(InformacionBancaria op) {
        //zona de variables
        boolean estado = false; //variable para detectar el estado de la insertcion
        Statement stm;  //este objero interpreta las sentencias de sql para java(insert)
        //scrip de insercion en la BD desde java
        String sql = "insert into informacionbancaria values (null,' "
                + op.getInstitucionFinanciera()+ " ',' " + op.getTipoCuenta()
                + " ',' " + op.getNumeroCuenta()+ " ',' " + op.getUsuario_idCedula() + " ');";
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
        InformacionBancaria objDAOoperacion;
        ArrayList<InformacionBancaria> arrOperacion = new ArrayList();
        Statement stm;// para interpretar sql desde java
        ResultSet resOperacion;//para recibir el resultado de la base
        String sql = "SELECT * FROM proyecto.informacionbancaria";
        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            while (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objDAOoperacion = new InformacionBancaria(resOperacion.getInt("idInformacionBancaria"),
                        resOperacion.getString("institucionFinanciera"),
                        resOperacion.getString("tipoCuenta"),
                        resOperacion.getString("numeroCuenta"), 
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
        InformacionBancaria objope;
        ArrayList<InformacionBancaria> arrOperacion = new ArrayList();
        Statement stm;
        ResultSet resOperacion = null;
        String sql = "SELECT * FROM informacionbancaria where usuario_idCedula = " + id;

        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            if (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objope = new InformacionBancaria(resOperacion.getInt("idInformacionBancaria"),
                        resOperacion.getString("institucionFinanciera"),
                        resOperacion.getString("tipoCuenta"),
                        resOperacion.getString("numeroCuenta"), 
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
        String sql = "delete from informacionbancaria where idInformacionBancaria = "+idDelet;
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
    public boolean Editar(InformacionBancaria objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update informacionbancaria set institucionFinanciera = '" 
                + objupdate.getInstitucionFinanciera()
                + "' where idInformacionBancaria = " + objupdate.getIdInformacionBancaria();
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
    public boolean EditarTODO(InformacionBancaria objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update informacionbancaria set institucionFinanciera = '" + objupdate.getInstitucionFinanciera()+ "', "
                + " tipoCuenta = '" + objupdate.getTipoCuenta()+ "',"
                + " numeroCuenta = '" + objupdate.getNumeroCuenta()+ "',"
                + " usuario_idCedula = '" + objupdate.getUsuario_idCedula()
                + "' where idInformacionBancaria = "
                + objupdate.getIdInformacionBancaria();
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
