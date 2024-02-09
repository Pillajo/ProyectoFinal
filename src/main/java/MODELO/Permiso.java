/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

import java.sql.Timestamp;

/**
 *
 * @author josep
 */
public class Permiso {
        //zona de variables
    int idPermiso;
    String motivo;
    String fechaHoraInicio;
    String fechaHoraFinal;
    String observaciones;
    double valordescontar;
    int usuario_idCedula;

    public Permiso(int idPermiso, String motivo) {
        this.idPermiso = idPermiso;
        this.motivo = motivo;
    }

    public Permiso(int usuario_idCedula) {
        this.usuario_idCedula = usuario_idCedula;
    }
    
    public Permiso(int idPermiso, String motivo, String fechaHoraInicio, String fechaHoraFinal, String observaciones, double valordescontar, int usuario_idCedula) {
        this.idPermiso = idPermiso;
        this.motivo = motivo;
        this.fechaHoraInicio = fechaHoraInicio;
        this.fechaHoraFinal = fechaHoraFinal;
        this.observaciones = observaciones;
        this.valordescontar = valordescontar;
        this.usuario_idCedula = usuario_idCedula;
    }

    public Permiso(String motivo, String fechaHoraInicio, String fechaHoraFinal, String observaciones, double valordescontar, int usuario_idCedula) {
        this.motivo = motivo;
        this.fechaHoraInicio = fechaHoraInicio;
        this.fechaHoraFinal = fechaHoraFinal;
        this.observaciones = observaciones;
        this.valordescontar = valordescontar;
        this.usuario_idCedula = usuario_idCedula;
    }
    
    

    public int getIdPermiso() {
        return idPermiso;
    }

    public void setIdPermiso(int idPermiso) {
        this.idPermiso = idPermiso;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public String getFechaHoraInicio() {
        return fechaHoraInicio;
    }

    public void setFechaHoraInicio(String fechaHoraInicio) {
        this.fechaHoraInicio = fechaHoraInicio;
    }

    public String getFechaHoraFinal() {
        return fechaHoraFinal;
    }

    public void setFechaHoraFinal(String fechaHoraFinal) {
        this.fechaHoraFinal = fechaHoraFinal;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public double getValordescontar() {
        return valordescontar;
    }

    public void setValordescontar(double valordescontar) {
        this.valordescontar = valordescontar;
    }

    public int getUsuario_idCedula() {
        return usuario_idCedula;
    }

    public void setUsuario_idCedula(int usuario_idCedula) {
        this.usuario_idCedula = usuario_idCedula;
    }

    @Override
    public String toString() {
        return "Permiso{" + "idPermiso=" + idPermiso + ", motivo=" + motivo + ", fechaHoraInicio=" + fechaHoraInicio + ", fechaHoraFinal=" + fechaHoraFinal + ", observaciones=" + observaciones + ", valordescontar=" + valordescontar + ", usuario_idCedula=" + usuario_idCedula + '}';
    }
    
    
}