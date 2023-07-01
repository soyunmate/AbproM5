package m5abpro1.Model;

public class Asesoria {
	private int id;
	private String nombre;
	private String detalle;
	private int profesional_id;
	
	public Asesoria() {
		super();
	}

	public Asesoria(int id, String nombre, String detalle, int profesional_id) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.detalle = detalle;
		this.profesional_id = profesional_id;
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

	public int getProfesional_id() {
		return profesional_id;
	}

	public void setProfesional_id(int profesional_id) {
		this.profesional_id = profesional_id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Asesoria [id=");
		builder.append(id);
		builder.append(", nombre=");
		builder.append(nombre);
		builder.append(", detalle=");
		builder.append(detalle);
		builder.append(", profesional_id=");
		builder.append(profesional_id);
		builder.append("]");
		return builder.toString();
	}
	
	
}
