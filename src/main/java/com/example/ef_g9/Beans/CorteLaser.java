package com.example.ef_g9.Beans;

import java.util.Date;

public class CorteLaser {
    private int idCorteLaser;
    private String url_imagen;
    private TipoServicio tipoServicio;
    private TiempoRealizacion tiempoRealizacion;
    private MaterialCorte materialCorte;
    private Dimensiones dimensiones;
    private GrosorCorte grosorCorte;
    private ColorLinea colorLinea;
    private float costoServicio;
    private Date fecha;

    public int getIdCorteLaser() {
        return idCorteLaser;
    }

    public void setIdCorteLaser(int idCorteLaser) {
        this.idCorteLaser = idCorteLaser;
    }

    public String getUrl_imagen() {
        return url_imagen;
    }

    public void setUrl_imagen(String url_imagen) {
        this.url_imagen = url_imagen;
    }

    public TipoServicio getTipoServicio() {
        return tipoServicio;
    }

    public void setTipoServicio(TipoServicio tipoServicio) {
        this.tipoServicio = tipoServicio;
    }

    public TiempoRealizacion getTiempoRealizacion() {
        return tiempoRealizacion;
    }

    public void setTiempoRealizacion(TiempoRealizacion tiempoRealizacion) {
        this.tiempoRealizacion = tiempoRealizacion;
    }

    public MaterialCorte getMaterialCorte() {
        return materialCorte;
    }

    public void setMaterialCorte(MaterialCorte materialCorte) {
        this.materialCorte = materialCorte;
    }

    public Dimensiones getDimensiones() {
        return dimensiones;
    }

    public void setDimensiones(Dimensiones dimensiones) {
        this.dimensiones = dimensiones;
    }

    public GrosorCorte getGrosorCorte() {
        return grosorCorte;
    }

    public void setGrosorCorte(GrosorCorte grosorCorte) {
        this.grosorCorte = grosorCorte;
    }

    public ColorLinea getColorLinea() {
        return colorLinea;
    }

    public void setColorLinea(ColorLinea colorLinea) {
        this.colorLinea = colorLinea;
    }

    public float getCostoServicio() {
        return costoServicio;
    }

    public void setCostoServicio(float costoServicio) {
        this.costoServicio = costoServicio;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
}
