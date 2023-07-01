package m5abpro1.Model;

public class chequeos {
	private int id;
	private int visita_id;
	private String detalle;
	private EstadoPago estado;
	
	public chequeos() {
		super();
	}

	public chequeos(int id, int visita_id, String detalle, EstadoPago estado) {
		super();
		this.id = id;
		this.visita_id = visita_id;
		this.detalle = detalle;
		this.estado = estado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getVisita_id() {
		return visita_id;
	}

	public void setVisita_id(int visita_id) {
		this.visita_id = visita_id;
	}

	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}

	public EstadoPago getEstado() {
		return estado;
	}

	public void setEstado(EstadoPago estado) {
		this.estado = estado;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("chequeos [id=");
		builder.append(id);
		builder.append(", visita_id=");
		builder.append(visita_id);
		builder.append(", detalle=");
		builder.append(detalle);
		builder.append(", estado=");
		builder.append(estado);
		builder.append("]");
		return builder.toString();
	}
	
	
	
}
