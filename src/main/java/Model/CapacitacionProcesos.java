package Model;

import java.util.ArrayList;
import java.util.List;

public class CapacitacionProcesos {
	private static List<Capacitacion> listadoCapacitaciones = new ArrayList<Capacitacion>();
	
	public static void addCapacitacion (Capacitacion cap){
		listadoCapacitaciones.add(cap);
	}
	
	public static List<Capacitacion> getListado() {
		return listadoCapacitaciones;
	}
}
