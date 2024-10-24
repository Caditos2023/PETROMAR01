/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author amali
 */
public class Impuesto {
    private int idImpuesto;  // Cambio a camelCase y private
    private String concepto;
    private float porcentaje;

    // Constructor por defecto
    public Impuesto() {
    }

    // Constructor con parámetros
    public Impuesto(int idImpuesto, String concepto, float porcentaje) {
        this.idImpuesto = idImpuesto;
        this.concepto = concepto;
        this.porcentaje = porcentaje;
    }

    // Getters y Setters
    public int getIdImpuesto() {
        return idImpuesto;
    }

    public void setIdImpuesto(int idImpuesto) {
        this.idImpuesto = idImpuesto;
    }

    public String getConcepto() {
        return concepto;
    }

    public void setConcepto(String concepto) {
        this.concepto = concepto;
    }

    public float getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(float porcentaje) {
        this.porcentaje = porcentaje;
    }
}
