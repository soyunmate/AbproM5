package m5abpro1.Model;


import java.util.Objects;

public class Capacitacion {
	private String rutCliente;
	private String dia;
	private String hora;
	private String lugar;
	private String duracion;
	private String cantAsist;
	
	public Capacitacion() {
		super();
	}
	
	public Capacitacion(String rutCliente, String dia, String hora, String lugar, String duracion, String cantAsist) {
		super();
		this.rutCliente = rutCliente;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.duracion = duracion;
		this.cantAsist = cantAsist;
	}

	public String getRutCliente() {
		return rutCliente;
	}

	public void setRutCliente(String rutCliente) {
		this.rutCliente = rutCliente;
	}

	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getLugar() {
		return lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public String getDuracion() {
		return duracion;
	}

	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}

	public String getCantAsist() {
		return cantAsist;
	}

	public void setCantAsist(String cantAsist) {
		this.cantAsist = cantAsist;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cantAsist, dia, duracion, hora, lugar, rutCliente);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Capacitacion other = (Capacitacion) obj;
		return cantAsist == other.cantAsist && Objects.equals(dia, other.dia) && duracion == other.duracion
				&& Objects.equals(hora, other.hora) && Objects.equals(lugar, other.lugar)
				&& Objects.equals(rutCliente, other.rutCliente);
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Capacitacion [rutCliente=");
		builder.append(rutCliente);
		builder.append(", dia=");
		builder.append(dia);
		builder.append(", hora=");
		builder.append(hora);
		builder.append(", lugar=");
		builder.append(lugar);
		builder.append(", duracion=");
		builder.append(duracion);
		builder.append(", cantAsist=");
		builder.append(cantAsist);
		builder.append("]");
		return builder.toString();
	}

	
	
	
	
}
