package m5abpro1.Model;

public class Asistente {
	private int capacitacion_id;
	private int usuario_id;
	
	
	public Asistente() {
		super();
	}


	public Asistente(int capacitacion_id, int usuario_id) {
		super();
		this.capacitacion_id = capacitacion_id;
		this.usuario_id = usuario_id;
	}


	public int getCapacitacion_id() {
		return capacitacion_id;
	}


	public void setCapacitacion_id(int capacitacion_id) {
		this.capacitacion_id = capacitacion_id;
	}


	public int getUsuario_id() {
		return usuario_id;
	}


	public void setUsuario_id(int usuario_id) {
		this.usuario_id = usuario_id;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Asistente [capacitacion_id=");
		builder.append(capacitacion_id);
		builder.append(", usuario_id=");
		builder.append(usuario_id);
		builder.append("]");
		return builder.toString();
	}
	
	
}
