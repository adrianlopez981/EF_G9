package com.example.ef_g9.Daos;


import com.example.ef_g9.Beans.ServicioxUsuario;
import com.example.ef_g9.Beans.TipoServicio;
import com.example.ef_g9.Beans.Usuario;

import java.sql.*;
import java.util.ArrayList;


public class ServicioDao extends BaseDao {

    public ArrayList<ServicioxUsuario> listarServicios(int idusuario) {
        ArrayList<ServicioxUsuario> listaServicios = new ArrayList<>();

        String sql = "select idServicioxUsuario, IdNuevoTipoServicio," +
                " nombre as NombreServicio, Usuario_idUsuario, borradorLogico" +
                " from nuevotiposervicio_has_usuario join nuevotiposervicio" +
                " on NuevoTipoServicio_idNuevoTipoServicio = idNuevoTipoServicio" +
                " where Usuario_idUsuario = ? and borradorLogico = 0";

        try (Connection conn = this.getConection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
        ) {
            pstmt.setInt(1, idusuario);


            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    ServicioxUsuario servicioxUsuario = new ServicioxUsuario();
                    servicioxUsuario.setIdServicioxUsuario(rs.getInt(1));
                    servicioxUsuario.setBorradorLogico((char) rs.getInt(5));

                    TipoServicio tipoServicio2 = new TipoServicio();
                    tipoServicio2.setIdTipoServicio(rs.getInt(2));
                    servicioxUsuario.setTipoServicio(tipoServicio2);

                    Usuario usuario2 = new Usuario();
                    usuario2.setIdUsuario(rs.getInt(4));
                    servicioxUsuario.setUsuario(usuario2);

                    listaServicios.add(servicioxUsuario);


                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return listaServicios;

    }


}

