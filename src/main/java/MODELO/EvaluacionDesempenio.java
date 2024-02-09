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
public class EvaluacionDesempenio {
        //zona de variables
    int idEvaluacionDesempenio;
    String periodoEvaluacionDesde;
    String periodoEvaluacionHasta;
    String nombreInstitucion;
    String puntaje;
    String calificacion;
    String observaciones;
    int usuario_idCedula;

    public EvaluacionDesempenio(int idEvaluacionDesempenio, String nombreInstitucion) {
        this.idEvaluacionDesempenio = idEvaluacionDesempenio;
        this.nombreInstitucion = nombreInstitucion;
    }

    
    public EvaluacionDesempenio(int idEvaluacionDesempenio, String periodoEvaluacionDesde, String periodoEvaluacionHasta, String nombreInstitucion, String puntaje, String calificacion, String observaciones, int usuario_idCedula) {
        this.idEvaluacionDesempenio = idEvaluacionDesempenio;
        this.periodoEvaluacionDesde = periodoEvaluacionDesde;
        this.periodoEvaluacionHasta = periodoEvaluacionHasta;
        this.nombreInstitucion = nombreInstitucion;
        this.puntaje = puntaje;
        this.calificacion = calificacion;
        this.observaciones = observaciones;
        this.usuario_idCedula = usuario_idCedula;
    }

    public EvaluacionDesempenio(String periodoEvaluacionDesde, String periodoEvaluacionHasta, String nombreInstitucion, String puntaje, String calificacion, String observaciones, int usuario_idCedula) {
        this.periodoEvaluacionDesde = periodoEvaluacionDesde;
        this.periodoEvaluacionHasta = periodoEvaluacionHasta;
        this.nombreInstitucion = nombreInstitucion;
        this.puntaje = puntaje;
        this.calificacion = calificacion;
        this.observaciones = observaciones;
        this.usuario_idCedula = usuario_idCedula;
    }

    public int getIdEvaluacionDesempenio() {
        return idEvaluacionDesempenio;
    }

    public void setIdEvaluacionDesempenio(int idEvaluacionDesempenio) {
        this.idEvaluacionDesempenio = idEvaluacionDesempenio;
    }

    public String getPeriodoEvaluacionDesde() {
        return periodoEvaluacionDesde;
    }

    public void setPeriodoEvaluacionDesde(String periodoEvaluacionDesde) {
        this.periodoEvaluacionDesde = periodoEvaluacionDesde;
    }

    public String getPeriodoEvaluacionHasta() {
        return periodoEvaluacionHasta;
    }

    public void setPeriodoEvaluacionHasta(String periodoEvaluacionHasta) {
        this.periodoEvaluacionHasta = periodoEvaluacionHasta;
    }

    public String getNombreInstitucion() {
        return nombreInstitucion;
    }

    public void setNombreInstitucion(String nombreInstitucion) {
        this.nombreInstitucion = nombreInstitucion;
    }

    public String getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(String puntaje) {
        this.puntaje = puntaje;
    }

    public String getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(String calificacion) {
        this.calificacion = calificacion;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public int getUsuario_idCedula() {
        return usuario_idCedula;
    }

    public void setUsuario_idCedula(int usuario_idCedula) {
        this.usuario_idCedula = usuario_idCedula;
    }

    @Override
    public String toString() {
        return "EvaluacionDesempenio{" + "idEvaluacionDesempenio=" + idEvaluacionDesempenio + ", periodoEvaluacionDesde=" + periodoEvaluacionDesde + ", periodoEvaluacionHasta=" + periodoEvaluacionHasta + ", nombreInstitucion=" + nombreInstitucion + ", puntaje=" + puntaje + ", calificacion=" + calificacion + ", observaciones=" + observaciones + ", usuario_idCedula=" + usuario_idCedula + '}';
    }

   
    
}