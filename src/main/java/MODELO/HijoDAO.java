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
public class HijoDAO {
    
private ConexionBd conecta;

//constructor
public  HijoDAO(String jdbcURL, String jdbcUserName, String jdbcPassword) throws SQLException{
    //instancio la claseDB con los parametros para la conexion DB
    conecta = new ConexionBd(jdbcURL, jdbcUserName, jdbcPassword);
}

//zona de metodos insert
   public boolean registrarHijo(Hijo op) {
        //zona de variables
        boolean estado = false; //variable para detectar el estado de la insertcion
        Statement stm;  //este objero interpreta las sentencias de sql para java(insert)
        //scrip de insercion en la BD desde java
        String sql = "insert into hijo values (null,' "
                + op.getCedulaOpasaporte()+ " ',' " + op.getNumeroHijo()
                + " ',' " + op.getNombres()+ " ',' " + op.getApellidos()
                + " ',' " +  op.getFechaNacimiento()+ " ',' " + op.getNivelInstrucion()
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
        Hijo objDAOoperacion;
        ArrayList<Hijo> arrOperacion = new ArrayList();
        Statement stm;// para interpretar sql desde java
        ResultSet resOperacion;//para recibir el resultado de la base
        String sql = "SELECT * FROM proyecto.hijo";
        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            while (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objDAOoperacion = new Hijo(resOperacion.getInt("idHijo"),
                        resOperacion.getString("cedulaOpasaporte"),
                        resOperacion.getString("numeroHijo"),
                        resOperacion.getString("nombres"),
                        resOperacion.getString("apellidos"),
                        resOperacion.getString("fechaNacimiento"),
                        resOperacion.getString("nivelInstrucion"),
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
        Hijo objope;
        ArrayList<Hijo> arrOperacion = new ArrayList();
        Statement stm;
        ResultSet resOperacion = null;
        String sql = "SELECT * FROM hijo where usuario_idCedula = " + id;

        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            if (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objope = new Hijo(resOperacion.getInt("idHijo"),
                        resOperacion.getString("cedulaOpasaporte"),
                        resOperacion.getString("numeroHijo"),
                        resOperacion.getString("nombres"),
                        resOperacion.getString("apellidos"),
                        resOperacion.getString("fechaNacimiento"),
                        resOperacion.getString("nivelInstrucion"),
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
        String sql = "delete from hijo where idHijo = "+idDelet;
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
    public boolean Editar(Hijo objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update hijo set nivelInstrucion = '" 
                + objupdate.getNivelInstrucion()
                + "' where idHijo = " + objupdate.getIdHijo();
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
    public boolean EditarTODO(Hijo objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update hijo set cedulaOpasaporte = '" + objupdate.getCedulaOpasaporte()+ "', "
                + " numeroHijo = '" + objupdate.getNumeroHijo()+ "',"
                + " nombres = '" + objupdate.getNombres()+ "',"
                + " apellidos = '" + objupdate.getApellidos() + "',"
                + " fechaNacimiento = '" + objupdate.getFechaNacimiento()+ "',"
                + " nivelInstrucion = '" + objupdate.getNivelInstrucion() + "',"
                + " usuario_idCedula = '" + objupdate.getUsuario_idCedula()
                + "' where idHijo = "
                + objupdate.getIdHijo();
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
