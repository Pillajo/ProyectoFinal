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
public class InclucionLaboralDAO {
    
private ConexionBd conecta;

//constructor
public  InclucionLaboralDAO(String jdbcURL, String jdbcUserName, String jdbcPassword) throws SQLException{
    //instancio la claseDB con los parametros para la conexion DB
    conecta = new ConexionBd(jdbcURL, jdbcUserName, jdbcPassword);
}

//zona de metodos insert
    public boolean registrarInclucionLaboral(InclucionLaboral op) {
        //zona de variables
        boolean estado = false; //variable para detectar el estado de la insertcion
        Statement stm;  //este objero interpreta las sentencias de sql para java(insert)
        //scrip de insercion en la BD desde java
        String sql = "insert into inclucionlaboral values (null,' "
                + op.getMigrante()+ " ',' " + op.getNacionalidad()
                + " ',' " + op.getEmbarazo()+ " ',' " + op.getMesesEmbarazo()
                + " ',' " +  op.getLicencia()+ " ',' " + op.getPorcentaje()
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
        InclucionLaboral objDAOoperacion;
        ArrayList<InclucionLaboral> arrOperacion = new ArrayList();
        Statement stm;// para interpretar sql desde java
        ResultSet resOperacion;//para recibir el resultado de la base
        String sql = "SELECT * FROM inclucionlaboral";
        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            while (resOperacion.next()) { //mientras el objeto tenga reguistro 
                objDAOoperacion = new InclucionLaboral(resOperacion.getInt("idInclucionLaboral"),
                        resOperacion.getString("migrante"),
                        resOperacion.getString("nacionalidad"),
                        resOperacion.getString("embarazo"),
                        resOperacion.getString("mesesEmbarazo"),
                        resOperacion.getString("licencia"),
                        resOperacion.getString("porcentaje"),
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
        InclucionLaboral objope;
        ArrayList<InclucionLaboral> arrOperacion = new ArrayList();
        Statement stm;
        ResultSet resOperacion = null;
        String sql = "SELECT * FROM inclucionlaboral where usuario_idCedula = " + usuario_idCedula;

        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            if (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objope = new InclucionLaboral(resOperacion.getInt("idInclucionLaboral"),
                        resOperacion.getString("migrante"),
                        resOperacion.getString("nacionalidad"),
                        resOperacion.getString("embarazo"),
                        resOperacion.getString("mesesEmbarazo"),
                        resOperacion.getString("licencia"),
                        resOperacion.getString("porcentaje"),
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
        String sql = "delete from inclucionlaboral where idInclucionLaboral = "+deleteId;
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
    public boolean Editar(InclucionLaboral objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update inclucionlaboral set nacionalidad = '" 
                + objupdate.getNacionalidad()
                + "' where idInclucionLaboral = " + objupdate.getIdInclucionLaboral();
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
    public boolean EditarTODO(InclucionLaboral objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update inclucionlaboral set migrante = '" + objupdate.getMigrante() + "', "
                + " nacionalidad = '" + objupdate.getNacionalidad() + "',"
                + " embarazo = '" + objupdate.getEmbarazo() + "',"
                + " mesesEmbarazo = '" + objupdate.getMesesEmbarazo() + "',"
                + " licencia = '" + objupdate.getLicencia() + "',"
                + " porcentaje = '" + objupdate.getPorcentaje()
                + "' where idInclucionLaboral = "
                + objupdate.getIdInclucionLaboral();
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

