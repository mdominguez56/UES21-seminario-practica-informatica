package views;

import controllers.ProyectoController;
import models.Proyecto;
import java.util.Scanner;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ProyectoController controlador = new ProyectoController();
        int opcion;

        do {
            System.out.println("\n--- SISTEMA DE GESTIÓN FUNDACIÓN MARÍA DE CANÁ ---");
            System.out.println("1. Registrar Nuevo Proyecto (CU01)");
            System.out.println("2. Ver Dashboard de Proyectos (CU03)");
            System.out.println("0. Salir");
            System.out.print("Seleccione una opción: ");
            opcion = scanner.nextInt();
            scanner.nextLine();

            switch (opcion) {
                case 1:
                    System.out.print("Nombre del Proyecto: ");
                    String nombre = scanner.nextLine();
                    System.out.print("Objetivo: ");
                    String objetivo = scanner.nextLine();
                    System.out.print("Presupuesto Inicial: ");
                    double presupuesto = scanner.nextDouble();

                    if (controlador.registrarProyecto(nombre, objetivo, presupuesto, 2)) {
                        System.out.println("✅ Proyecto registrado exitosamente.");
                    } else {
                        System.out.println("❌ Error al registrar el proyecto.");
                    }
                    break;
                case 2:
                    System.out.println("\n--- DASHBOARD GENERAL ---");
                    List<Proyecto> lista = controlador.listarProyectos();
                    for (Proyecto p : lista) {
                        System.out.println(p.toString());
                    }
                    break;
                case 0:
                    System.out.println("Saliendo del sistema...");
                    break;
                default:
                    System.out.println("Opción no válida.");
            }
        } while (opcion != 0);

        scanner.close();
    }
}
