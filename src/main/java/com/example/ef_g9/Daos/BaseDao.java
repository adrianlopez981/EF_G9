package com.example.ef_g9.Daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseDao {

    public Connection getConection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }

        String username = "root";
        String password = "root";
        String database = "sala_veo";
        String url = "jdbc:mysql://localhost:3306/" + database;

        return DriverManager.getConnection(url, username, password);

    }
}
