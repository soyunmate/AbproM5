package m5abpro1.Model;

import java.time.LocalDate;

public class Pagos {
	private int id;
	private int cliente_id;
	private double monto;
	private LocalDate fecha_pago;
	
	public Pagos() {
		super();
	}

	public Pagos(int id, int cliente_id, double monto, LocalDate fecha_pago) {
		super();
		this.id = id;
		this.cliente_id = cliente_id;
		this.monto = monto;
		this.fecha_pago = fecha_pago;
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

	public double getMonto() {
		return monto;
	}

	public void setMonto(double monto) {
		this.monto = monto;
	}

	public LocalDate getFecha_pago() {
		return fecha_pago;
	}

	public void setFecha_pago(LocalDate fecha_pago) {
		this.fecha_pago = fecha_pago;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Pagos [id=");
		builder.append(id);
		builder.append(", cliente_id=");
		builder.append(cliente_id);
		builder.append(", monto=");
		builder.append(monto);
		builder.append(", fecha_pago=");
		builder.append(fecha_pago);
		builder.append("]");
		return builder.toString();
	}
	
	
}
