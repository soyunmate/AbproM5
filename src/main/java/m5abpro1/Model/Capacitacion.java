package m5abpro1.Model;

public class Capacitacion {
	private int id;
	private String nombre;
	private String detalle;
	
	public Capacitacion() {
		super();
	}
	
	public Capacitacion(int id, String nombre, String detalle) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.detalle = detalle;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Capacitacion [id=");
		builder.append(id);
		builder.append(", nombre=");
		builder.append(nombre);
		builder.append(", detalle=");
		builder.append(detalle);
		builder.append("]");
		return builder.toString();
	}

	
	
	
}
