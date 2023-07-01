package m5abpro1.Model;

import java.time.LocalDate;

public class Accidente {
	private int id;
	private int cliente_id;
	private LocalDate fecha_accidente;
	private String detalle;
	
	public Accidente() {
		super();
	}

	public Accidente(int id, int cliente_id, LocalDate fecha_accidente, String detalle) {
		super();
		this.id = id;
		this.cliente_id = cliente_id;
		this.fecha_accidente = fecha_accidente;
		this.detalle = detalle;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCliente_id() {
		return cliente_id;
	}

	public void setCliente_id(int cliente_id) {
		this.cliente_id = cliente_id;
	}

	public LocalDate getFecha_accidente() {
		return fecha_accidente;
	}

	public void setFecha_accidente(LocalDate fecha_accidente) {
		this.fecha_accidente = fecha_accidente;
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
		builder.append("Accidente [id=");
		builder.append(id);
		builder.append(", cliente_id=");
		builder.append(cliente_id);
		builder.append(", fecha_accidente=");
		builder.append(fecha_accidente);
		builder.append(", detalle=");
		builder.append(detalle);
		builder.append("]");
		return builder.toString();
	}
	
	
}
