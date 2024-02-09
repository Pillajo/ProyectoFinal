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
public class InformacionBancaria {

    int idInformacionBancaria;
    String institucionFinanciera;
    String tipoCuenta;
    String numeroCuenta;
    int usuario_idCedula;

    public InformacionBancaria(int idInformacionBancaria, String institucionFinanciera) {
        this.idInformacionBancaria = idInformacionBancaria;
        this.institucionFinanciera = institucionFinanciera;
    }

    public InformacionBancaria(int idInformacionBancaria, String institucionFinanciera, String tipoCuenta, String numeroCuenta, int usuario_idCedula) {
        this.idInformacionBancaria = idInformacionBancaria;
        this.institucionFinanciera = institucionFinanciera;
        this.tipoCuenta = tipoCuenta;
        this.numeroCuenta = numeroCuenta;
        this.usuario_idCedula = usuario_idCedula;
    }

    public InformacionBancaria(String institucionFinanciera, String tipoCuenta, String numeroCuenta, int usuario_idCedula) {
        this.institucionFinanciera = institucionFinanciera;
        this.tipoCuenta = tipoCuenta;
        this.numeroCuenta = numeroCuenta;
        this.usuario_idCedula = usuario_idCedula;
    }

    public int getIdInformacionBancaria() {
        return idInformacionBancaria;
    }

    public void setIdInformacionBancaria(int idInformacionBancaria) {
        this.idInformacionBancaria = idInformacionBancaria;
    }

    public String getInstitucionFinanciera() {
        return institucionFinanciera;
    }

    public void setInstitucionFinanciera(String institucionFinanciera) {
        this.institucionFinanciera = institucionFinanciera;
    }

    public String getTipoCuenta() {
        return tipoCuenta;
    }

    public void setTipoCuenta(String tipoCuenta) {
        this.tipoCuenta = tipoCuenta;
    }

    public String getNumeroCuenta() {
        return numeroCuenta;
    }

    public void setNumeroCuenta(String numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public int getUsuario_idCedula() {
        return usuario_idCedula;
    }

    public void setUsuario_idCedula(int usuario_idCedula) {
        this.usuario_idCedula = usuario_idCedula;
    }

    @Override
    public String toString() {
        return "InformacionBancaria{" + "idInformacionBancaria=" + idInformacionBancaria + ", institucionFinanciera=" + institucionFinanciera + ", tipoCuenta=" + tipoCuenta + ", numeroCuenta=" + numeroCuenta + ", usuario_idCedula=" + usuario_idCedula + '}';
    }

}
