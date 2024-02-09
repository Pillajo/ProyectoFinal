package MODELO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class AsistenciaDAO {

    private ConexionBd conecta;

//constructor
    public AsistenciaDAO(String jdbcURL, String jdbcUserName, String jdbcPassword) throws SQLException {
        //instancio la claseDB con los parametros para la conexion DB
        conecta = new ConexionBd(jdbcURL, jdbcUserName, jdbcPassword);
    }

    //zona de metodos insert
      public boolean registrarAsistecia(Asistencia op) {
        //zona de variables
        boolean estado = false; //variable para detectar el estado de la insertcion
        Statement stm;  //este objero interpreta las sentencias de sql para java(insert)
        //scrip de insercion en la BD desde java
        String sql = "insert into asistencia values (null,' "
                + op.getFechaAsistencia() + " ',' " + op.getHoraEntrada()
                + " ',' " + op.getHoraSalida() + " ',' " + op.getObserbaciones()
                + " ',' " + op.getCumpleOchoHoras() + " ',' " + op.getHojaRuta()
                + " ',' " + op.getHoraInicioHojaRuta() + " ',' " + op.getHoraFinHojaRuta()
                + " ',' " + op.getUsuario_idCedula() + " ',' " + op.getHorasTrabajadas()+ " ');";
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
        Asistencia objDAOoperacion;
        ArrayList<Asistencia> arrOperacion = new ArrayList();
        Statement stm;// para interpretar sql desde java
        ResultSet resOperacion;//para recibir el resultado de la base
        String sql = "SELECT * FROM proyecto.asistencia";
        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            while (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objDAOoperacion = new Asistencia(resOperacion.getInt("idAsistencia"),
                        resOperacion.getString("fechaAsistencia"),
                        resOperacion.getString("horaEntrada"), resOperacion.getString("horaSalida"),
                        resOperacion.getString("obserbaciones"), resOperacion.getString("cumpleOchoHoras"),
                        resOperacion.getString("hojaRuta"), resOperacion.getString("horaInicioHojaRuta"),
                        resOperacion.getString("horaFinHojaRuta"),
                        resOperacion.getInt("usuario_idCedula"),resOperacion.getString("horasTrabajadas"));

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
        Asistencia objope;
        ArrayList<Asistencia> arrOperacion = new ArrayList();
        Statement stm;
        ResultSet resOperacion = null;
        String sql = "SELECT * FROM asistencia where usuario_idCedula = " + id;

        try {
            conecta.connection();//abro conexin bd
            stm = conecta.getJdbcConnection().createStatement();
            resOperacion = stm.executeQuery(sql);
            if (resOperacion.next()) { //mientras el el objeto tenga reguistro 
                objope = new Asistencia(resOperacion.getInt("idAsistencia"),
                        resOperacion.getString("fechaAsistencia"),
                        resOperacion.getString("horaEntrada"), resOperacion.getString("horaSalida"),
                        resOperacion.getString("obserbaciones"), resOperacion.getString("cumpleOchoHoras"),
                        resOperacion.getString("hojaRuta"), resOperacion.getString("horaInicioHojaRuta"),
                        resOperacion.getString("horaFinHojaRuta"),
                        resOperacion.getInt("usuario_idCedula"),resOperacion.getString("horasTrabajadas"));

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
    public boolean Eliminar(int idDelet) {
        //zona de variables

        boolean estado = false;
        Statement stm;
        String sql = "delete from asistencia where idAsistencia = " + idDelet;
        try {
            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            stm.executeUpdate(sql);
            estado = true;
            stm.close();
            conecta.discconect();
        } catch (SQLException e) {
            estado = false;
            e.printStackTrace();
        }
        return estado;
    }

    //METODO PARA MODIFICAR
    public boolean Editar(Asistencia objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update asistencia set cumpleOchoHoras = '" 
                + objupdate.getCumpleOchoHoras()
                + "' where idAsistencia = " + objupdate.getIdAsistencia();
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
    public boolean EditarTODO(Asistencia objupdate) {
        boolean estado = false;
        Statement stm;
        String sql = "update asistencia set fechaAsistencia = '" + objupdate.getFechaAsistencia() + "', "            
                + " obserbaciones = '" + objupdate.getObserbaciones() + "',"
                + " hojaRuta = '" + objupdate.getHojaRuta() + "',"
                + " horaInicioHojaRuta = '" + objupdate.getHoraInicioHojaRuta() + "',"
                + " horaFinHojaRuta = '" + objupdate.getHoraFinHojaRuta()
                + "' where idAsistencia = "
                + objupdate.getIdAsistencia();
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
