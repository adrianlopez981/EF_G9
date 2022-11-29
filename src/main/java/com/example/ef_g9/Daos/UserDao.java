package com.example.ef_g9.Daos;

import com.example.ef_g9.Beans.TipoUsuario;
import com.example.ef_g9.Beans.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao extends BaseDao {

    public Usuario validarUsuarioPasswordHashed(String username, String password) {

        Usuario usuario = null;

        String sql = "SELECT * FROM usuario_credentials WHERE email = ? AND password_hashed = SHA2(?,256)";

        try (Connection conn = this.getConection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            try (ResultSet rs = pstmt.executeQuery();) {
                if (rs.next()) {
                    int idUsuario = rs.getInt(1);
                    usuario = this.obtenerEmpleado(idUsuario);
                }
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return usuario;
    }


    public Usuario obtenerEmpleado(int idUsuario) {

        Usuario usuario = null;

        String sql = "SELECT * FROM usuario e WHERE idUsuario = ?";

        try (Connection conn = this.getConection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setInt(1, idUsuario);

            try (ResultSet rs = pstmt.executeQuery();) {

                if (rs.next()) {
                    usuario = new Usuario();
                    usuario.setIdUsuario(rs.getInt(1));
                    usuario.setNombre(rs.getString(2));
                    usuario.setApellido(rs.getString(3));
                    usuario.setCorreo(rs.getString(4));
                    usuario.setContrasena(rs.getString(5));

                    TipoUsuario tipoUsuario = new TipoUsuario();
                    tipoUsuario.setIdTipoUsuario(rs.getInt(6));
                    usuario.setTipoUsuario(tipoUsuario);

                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return usuario;
    }


}
