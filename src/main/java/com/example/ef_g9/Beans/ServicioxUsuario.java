package com.example.ef_g9.Beans;

public class ServicioxUsuario {
    private int idServicioxUsuario;
    private Usuario usuario;
    private TipoServicio tipoServicio;
    private char borradorLogico;


    public int getIdServicioxUsuario() {
        return idServicioxUsuario;
    }

    public void setIdServicioxUsuario(int idServicioxUsuario) {
        this.idServicioxUsuario = idServicioxUsuario;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public TipoServicio getTipoServicio() {
        return tipoServicio;
    }

    public void setTipoServicio(TipoServicio tipoServicio) {
        this.tipoServicio = tipoServicio;
    }

    public char getBorradorLogico() {
        return borradorLogico;
    }

    public void setBorradorLogico(char borradorLogico) {
        this.borradorLogico = borradorLogico;
    }
}
