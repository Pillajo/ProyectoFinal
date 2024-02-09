/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

import java.sql.Date;

/**
 *
 * @author josep
 */
public class TrayectoriaLaboral {
        //zona de variables
    int idTrayectoriaLaboral;
    String tipoInstrucion;
    String institucionOrganizacion;
    String unidadAdministrativa;
    String puesto;
    String  fechaIngreso;
    String fechaSalida;
    String modalidadIngreso;
    String motivoSalida;
    int usuario_idCedula;

    public TrayectoriaLaboral(int idTrayectoriaLaboral, String unidadAdministrativa) {
        this.idTrayectoriaLaboral = idTrayectoriaLaboral;
        this.unidadAdministrativa = unidadAdministrativa;
    }

    
    
    public TrayectoriaLaboral(int idTrayectoriaLaboral, String tipoInstrucion, String institucionOrganizacion, String unidadAdministrativa, String puesto, String fechaIngreso, String fechaSalida, String modalidadIngreso, String motivoSalida, int usuario_idCedula) {
        this.idTrayectoriaLaboral = idTrayectoriaLaboral;
        this.tipoInstrucion = tipoInstrucion;
        this.institucionOrganizacion = institucionOrganizacion;
        this.unidadAdministrativa = unidadAdministrativa;
        this.puesto = puesto;
        this.fechaIngreso = fechaIngreso;
        this.fechaSalida = fechaSalida;
        this.modalidadIngreso = modalidadIngreso;
        this.motivoSalida = motivoSalida;
        this.usuario_idCedula = usuario_idCedula;
    }

    public TrayectoriaLaboral(String tipoInstrucion, String institucionOrganizacion, String unidadAdministrativa, String puesto, String fechaIngreso, String fechaSalida, String modalidadIngreso, String motivoSalida, int usuario_idCedula) {
        this.tipoInstrucion = tipoInstrucion;
        this.institucionOrganizacion = institucionOrganizacion;
        this.unidadAdministrativa = unidadAdministrativa;
        this.puesto = puesto;
        this.fechaIngreso = fechaIngreso;
        this.fechaSalida = fechaSalida;
        this.modalidadIngreso = modalidadIngreso;
        this.motivoSalida = motivoSalida;
        this.usuario_idCedula = usuario_idCedula;
    }

   

    public int getIdTrayectoriaLaboral() {
        return idTrayectoriaLaboral;
    }

    public void setIdTrayectoriaLaboral(int idTrayectoriaLaboral) {
        this.idTrayectoriaLaboral = idTrayectoriaLaboral;
    }

    public String getTipoInstrucion() {
        return tipoInstrucion;
    }

    public void setTipoInstrucion(String tipoInstrucion) {
        this.tipoInstrucion = tipoInstrucion;
    }

    public String getInstitucionOrganizacion() {
        return institucionOrganizacion;
    }

    public void setInstitucionOrganizacion(String institucionOrganizacion) {
        this.institucionOrganizacion = institucionOrganizacion;
    }

    public String getUnidadAdministrativa() {
        return unidadAdministrativa;
    }

    public void setUnidadAdministrativa(String unidadAdministrativa) {
        this.unidadAdministrativa = unidadAdministrativa;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public String getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(String fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public String getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(String fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public String getModalidadIngreso() {
        return modalidadIngreso;
    }

    public void setModalidadIngreso(String modalidadIngreso) {
        this.modalidadIngreso = modalidadIngreso;
    }

    public String getMotivoSalida() {
        return motivoSalida;
    }

    public void setMotivoSalida(String motivoSalida) {
        this.motivoSalida = motivoSalida;
    }

    public int getUsuario_idCedula() {
        return usuario_idCedula;
    }

    public void setUsuario_idCedula(int usuario_idCedula) {
        this.usuario_idCedula = usuario_idCedula;
    }

    @Override
    public String toString() {
        return "TrayectoriaLaboral{" + "idTrayectoriaLaboral=" + idTrayectoriaLaboral + ", tipoInstrucion=" + tipoInstrucion + ", institucionOrganizacion=" + institucionOrganizacion + ", unidadAdministrativa=" + unidadAdministrativa + ", puesto=" + puesto + ", fechaSalida=" + fechaSalida + ", fechaIngreso=" + fechaIngreso + ", modalidadIngreso=" + modalidadIngreso + ", motivoSalida=" + motivoSalida + ", usuario_idCedula=" + usuario_idCedula + '}';
    }

  
    
}