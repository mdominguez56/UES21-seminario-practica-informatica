package models;

public class Proyecto {
    private int idProyecto;
    private String nombre;
    private double presupuestoInicial;
    private String estado;

    public Proyecto(int idProyecto, String nombre, double presupuestoInicial, String estado) {
        this.idProyecto = idProyecto;
        this.nombre = nombre;
        this.presupuestoInicial = presupuestoInicial;
        this.estado = estado;
    }

    // Getters y Setters
    public int getIdProyecto() { return idProyecto; }
    public String getNombre() { return nombre; }
    public double getPresupuestoInicial() { return presupuestoInicial; }
    public String getEstado() { return estado; }

    @Override
    public String toString() {
        return "Proyecto [" + idProyecto + "] - " + nombre + " | Presupuesto: $" + presupuestoInicial + " | Estado: " + estado;
    }
}
