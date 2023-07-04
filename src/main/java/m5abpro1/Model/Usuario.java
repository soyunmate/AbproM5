package m5abpro1.Model;

public class Usuario {
	private int id;
	private String pw;
	private String nombre;
	private TipoUsuario tipo;
	private String rut;
	private String area;
	private String titulo;
	
	public Usuario() {
		super();
	}

	public Usuario(int id, String pw, String nombre, TipoUsuario tipo, String rut, String area, String titulo) {
		super();
		this.id = id;
		this.pw = pw;
		this.nombre = nombre;
		this.tipo = tipo;
		this.rut = rut;
		this.area = area;
		this.titulo = titulo;
	}

	public Usuario(int id, String nombre, TipoUsuario tipo, String rut, String area, String titulo) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.tipo = tipo;
		this.rut = rut;
		this.area = area;
		this.titulo = titulo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public TipoUsuario getTipo() {
		return tipo;
	}

	public void setTipo(TipoUsuario tipo) {
		this.tipo = tipo;
	}

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Usuario [id=");
		builder.append(id);
		builder.append(", pw=");
		builder.append(pw);
		builder.append(", nombre=");
		builder.append(nombre);
		builder.append(", tipo=");
		builder.append(tipo);
		builder.append(", rut=");
		builder.append(rut);
		builder.append(", area=");
		builder.append(area);
		builder.append(", titulo=");
		builder.append(titulo);
		builder.append("]");
		return builder.toString();
	}
	
	
	

	
	
	
}
