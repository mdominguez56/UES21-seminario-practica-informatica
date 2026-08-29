package controllers;

import config.ConexionDB;
import models.Proyecto;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProyectoController {

    public boolean registrarProyecto(String nombre, String objetivo, double presupuesto, int idLider) {
        String sql = "INSERT INTO Proyectos (nombre, objetivo, presupuesto_inicial, id_lider) VALUES (?, ?, ?, ?)";
        try (Connection con = ConexionDB.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, nombre);
            ps.setString(2, objetivo);
            ps.setDouble(3, presupuesto);
            ps.setInt(4, idLider);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println("Error al registrar: " + e.getMessage());
            return false;
        }
    }

    public List<Proyecto> listarProyectos() {
        List<Proyecto> proyectos = new ArrayList<>();
        String sql = "SELECT * FROM Proyectos";
        try (Connection con = ConexionDB.conectar();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            while (rs.next()) {
                proyectos.add(new Proyecto(
                    rs.getInt("id_proyecto"),
                    rs.getString("nombre"),
                    rs.getDouble("presupuesto_inicial"),
                    rs.getString("estado")
                ));
            }
        } catch (SQLException e) {
            System.out.println("Error al listar: " + e.getMessage());
        }
        return proyectos;
    }
}
