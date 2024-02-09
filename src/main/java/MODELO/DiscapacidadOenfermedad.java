/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

/**
 *
 * @author josep
 */
public class DiscapacidadOenfermedad {
      //zona de variables
    int idDiscapacidadOenfermedad;
    String situacion;
    String situacionnumeroCarnetConadis;
    String certificadoEnfermedadCarastrofica;
    String tipoDiscapacidad;
    String porcentaje;
    String tipoEnfermedad;
    String tipoRelacion;
    int usuario_idCedula;

    public DiscapacidadOenfermedad(int idDiscapacidadOenfermedad, String situacion) {
        this.idDiscapacidadOenfermedad = idDiscapacidadOenfermedad;
        this.situacion = situacion;
    }

    
    
    public DiscapacidadOenfermedad(int idDiscapacidadOenfermedad, String situacion, String situacionnumeroCarnetConadis, String certificadoEnfermedadCarastrofica, String tipoDiscapacidad, String porcentaje, String tipoEnfermedad, String tipoRelacion, int usuario_idCedula) {
        this.idDiscapacidadOenfermedad = idDiscapacidadOenfermedad;
        this.situacion = situacion;
        this.situacionnumeroCarnetConadis = situacionnumeroCarnetConadis;
        this.certificadoEnfermedadCarastrofica = certificadoEnfermedadCarastrofica;
        this.tipoDiscapacidad = tipoDiscapacidad;
        this.porcentaje = porcentaje;
        this.tipoEnfermedad = tipoEnfermedad;
        this.tipoRelacion = tipoRelacion;
        this.usuario_idCedula = usuario_idCedula;
    }

    
    public DiscapacidadOenfermedad(String situacion, String situacionnumeroCarnetConadis, String certificadoEnfermedadCarastrofica, String tipoDiscapacidad, String porcentaje, String tipoEnfermedad, String tipoRelacion, int usuario_idCedula) {
        this.situacion = situacion;
        this.situacionnumeroCarnetConadis = situacionnumeroCarnetConadis;
        this.certificadoEnfermedadCarastrofica = certificadoEnfermedadCarastrofica;
        this.tipoDiscapacidad = tipoDiscapacidad;
        this.porcentaje = porcentaje;
        this.tipoEnfermedad = tipoEnfermedad;
        this.tipoRelacion = tipoRelacion;
        this.usuario_idCedula = usuario_idCedula;
    }

    
    public int getIdDiscapacidadOenfermedad() {
        return idDiscapacidadOenfermedad;
    }

    public void setIdDiscapacidadOenfermedad(int idDiscapacidadOenfermedad) {
        this.idDiscapacidadOenfermedad = idDiscapacidadOenfermedad;
    }

    public String getSituacion() {
        return situacion;
    }

    public void setSituacion(String situacion) {
        this.situacion = situacion;
    }

    public String getSituacionnumeroCarnetConadis() {
        return situacionnumeroCarnetConadis;
    }

    public void setSituacionnumeroCarnetConadis(String situacionnumeroCarnetConadis) {
        this.situacionnumeroCarnetConadis = situacionnumeroCarnetConadis;
    }

    public String getCertificadoEnfermedadCarastrofica() {
        return certificadoEnfermedadCarastrofica;
    }

    public void setCertificadoEnfermedadCarastrofica(String certificadoEnfermedadCarastrofica) {
        this.certificadoEnfermedadCarastrofica = certificadoEnfermedadCarastrofica;
    }

    public String getTipoDiscapacidad() {
        return tipoDiscapacidad;
    }

    public void setTipoDiscapacidad(String tipoDiscapacidad) {
        this.tipoDiscapacidad = tipoDiscapacidad;
    }

    public String getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(String porcentaje) {
        this.porcentaje = porcentaje;
    }

    public String getTipoEnfermedad() {
        return tipoEnfermedad;
    }

    public void setTipoEnfermedad(String tipoEnfermedad) {
        this.tipoEnfermedad = tipoEnfermedad;
    }

    public String getTipoRelacion() {
        return tipoRelacion;
    }

    public void setTipoRelacion(String tipoRelacion) {
        this.tipoRelacion = tipoRelacion;
    }

    public int getUsuario_idCedula() {
        return usuario_idCedula;
    }

    public void setUsuario_idCedula(int usuario_idCedula) {
        this.usuario_idCedula = usuario_idCedula;
    }

    @Override
    public String toString() {
        return "DiscapacidadOenfermedad{" + "idDiscapacidadOenfermedad=" + idDiscapacidadOenfermedad + ", situacion=" + situacion + ", situacionnumeroCarnetConadis=" + situacionnumeroCarnetConadis + ", certificadoEnfermedadCarastrofica=" + certificadoEnfermedadCarastrofica + ", tipoDiscapacidad=" + tipoDiscapacidad + ", porcentaje=" + porcentaje + ", tipoEnfermedad=" + tipoEnfermedad + ", tipoRelacion=" + tipoRelacion + ", usuario_idCedula=" + usuario_idCedula + '}';
    }
    
    
}