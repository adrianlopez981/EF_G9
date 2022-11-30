package com.example.ef_g9.Daos;


import com.example.ef_g9.Beans.ServicioxUsuario;
import com.example.ef_g9.Beans.TipoUsuario;
import com.example.ef_g9.Beans.Usuario;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ServicioDao extends BaseDao {

    public ArrayList<ServicioxUsuario> listarEmpleados() {
        ArrayList<ServicioxUsuario> listaServicios = new ArrayList<>();

        try (Connection conn = this.getConection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM employees e \n"
                     + "left join jobs j on (j.job_id = e.job_id) \n"
                     + "left join departments d on (d.department_id = e.department_id)\n"
                     + "left  join employees m on (e.manager_id = m.employee_id)");) {

            while (rs.next()) {
                ServicioxUsuario servicio = new ServicioxUsuario();
                servicio.setIdUsuario(rs.getInt(1));
                servicio.setNombre(rs.getString(2));
                servicio.setApellido(rs.getString(3));
                servicio.setCorreo(rs.getString(4));
                servicio.setContrasena(rs.getString(5));


                TipoUsuario tipoUsuario = new TipoUsuario();
                tipoUsuario.setIdTipoUsuario(rs.getInt(6));
                usuario.setTipoUsuario(tipoUsuario);



                if (rs.getInt("e.manager_id") != 0) {
                    Employee manager = new Employee();
                    manager.setEmployeeId(rs.getInt("e.manager_id"));
                    manager.setFirstName(rs.getString("m.first_name"));
                    manager.setLastName(rs.getString("m.last_name"));
                    employee.setManager(manager);
                }

                if (rs.getInt("e.department_id") != 0) {
                    Department department = new Department();
                    department.setDepartmentId(rs.getInt(11));
                    department.setDepartmentName(rs.getString("d.department_name"));
                    employee.setDepartment(department);
                }

                listaServicios.add(servicio);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return listaServicios;
    }
}
