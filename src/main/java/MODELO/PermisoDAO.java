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
public class PermisoDAO {
    
private ConexionBd conecta;

//constructor
public  PermisoDAO(String jdbcURL, String jdbcUserName, String jdbcPassword) throws SQLException{
    //instancio la claseDB con los parametros para la conexion DB
    conecta = new ConexionBd(jdbcURL, jdbcUserName, jdbcPassword);
    
}    

//zona de metodos insert
    public boolean registrarPermiso(Permiso op) {
        //zona de variables
        boolean estado = false; //variable para detectar el estado de la insertcion
        Statement stm;  //este objero interpreta las sentencias de sql para java(insert)
        //scrip de insercion en la BD desde java
        String sql = "insert into permiso values (null,' "+
                op.getMotivo()+" ',' "+op.getFechaHoraInicio()+
                " ',' "+op.getFechaHoraFinal()+" ',' "+op.getObservaciones()+
                " ',' "+op.getValordescontar()+ " ',' "+op.getUsuario_idCedula()+" ');";

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
        Permiso objDAOoperacion;
        ArrayList<Permiso> arrOperacion = new ArrayList();
        Statement stm;// para interpretar sql desde java
        ResultSet resOperacion;//para recibir el resultado de la base
        String sql = "SELECT * FROM proyecto.permiso";
        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            while (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objDAOoperacion = new Permiso(resOperacion.getInt("idPermiso"),
                        resOperacion.getString("motivo"),
                        resOperacion.getString("fechaHoraInicio"), resOperacion.getString("fechaHoraFinal"),
                        resOperacion.getString("observaciones"),resOperacion.getDouble("valordescontar"), 
                        resOperacion.getInt("usuario_idCedula"));
                
                arrOperacion.add(objDAOoperacion);//carga cada reguistro en el arrailist
            }
            stm.close();
            conecta.discconect();
        } 
        catch (SQLException e) {
            e.printStackTrace();//capturo toda la traza del error en el 
        }
        return arrOperacion;
    }
    //metodo para selecionar un registro que cumpla con una condicion
    public ArrayList SelecionarUno(int usuario_idCedula){
        Permiso objope;
        ArrayList<Permiso> arrOperacion = new ArrayList();
        Statement stm;
        ResultSet resOperacion = null;
        String sql = "SELECT * FROM permiso where usuario_idCedula = "+usuario_idCedula ;
        
        try {
             conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            if (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objope = new Permiso(resOperacion.getInt("idPermiso"),
                        resOperacion.getString("motivo"),
                        resOperacion.getString("fechaHoraInicio"), resOperacion.getString("fechaHoraFinal"),
                        resOperacion.getString("observaciones"),resOperacion.getDouble("valordescontar"), 
                        resOperacion.getInt("usuario_idCedula"));
            
        arrOperacion.add(objope);    
        }
            stm.close();
            conecta.discconect();
        
        } 
        catch (SQLException e) {
            e.printStackTrace();//capturo toda la traza del error en el 
        }
        return arrOperacion;
    }
    
     //metodo para borrar
    public boolean Eliminar(int deleteId){
        //zona de variables
        
        boolean estado = false;
        Statement stm;
        String sql = "delete from permiso where idPermiso = "+deleteId;
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
    public boolean Editar(Permiso objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update permiso set motivo = '" + objupdate.getMotivo() +
                "' where idPermiso = " + objupdate.getIdPermiso();
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
    public boolean EditarTODO(Permiso objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update permiso set motivo = '" + objupdate.getMotivo() + "', "
                + " fechaHoraInicio = '" + objupdate.getFechaHoraInicio() + "',"
                + " fechaHoraFinal = '" + objupdate.getFechaHoraFinal() + "',"
                + " observaciones = '" + objupdate.getObservaciones()+ "',"
                + " valordescontar = '" + objupdate.getValordescontar()
                + "' where idPermiso = "
                + objupdate.getIdPermiso();

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
