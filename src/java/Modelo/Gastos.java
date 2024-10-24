/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.Date;

/**
 *
 * @author amali
 */

public class Gastos {
    private int idGastos;  // Cambio a camelCase y private
    private String motivo;
    private Double monto;
    private Date fecha;
    
    // Constructor por defecto
    public Gastos() {
    }

    public Gastos(int idGastos, String motivo, Double monto, Date fecha) {
        this.idGastos = idGastos;
        this.motivo = motivo;
        this.monto = monto;
        this.fecha = fecha;
    }

    public int getIdGastos() {
        return idGastos;
    }

    public void setIdGastos(int idGastos) {
        this.idGastos = idGastos;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

   
}
