package m5abpro1.Model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import m5abpro1.Model.Capacitacion;
import m5abpro1.Model.Conexion.Conexion;

public class CapacitacionDAOImpl implements ICapacitacionDAO{
	private Connection cn = null;
	
	@Override
	public void create(Capacitacion p) {
		String sql = "INSERT INTO capacitaciones(nombre,detalle) VALUES(?,?)";
		
		try {
			cn = Conexion.getConn();
			PreparedStatement ppStm = cn.prepareStatement(sql);
			ppStm.setString(1, p.getNombre());
			ppStm.setString(2, p.getDetalle());
		
			
			if (!ppStm.execute()) {
				System.out.println("Registro creado");
			} else {
				System.out.println("Registro Fallido");
			}
			ppStm.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Capacitacion readOne(int id) {
		String sql = "SELECT id, nombre, detalle FROM capacitaciones WHERE id="+id;
		Capacitacion cap = new Capacitacion();
		
		try {
			cn = Conexion.getConn();
			
			
			
		} catch (Exception e) {			
			e.printStackTrace();
		}
		
		
		return cap;
	}

	@Override
	public List<Capacitacion> readAll() {
		String sql = "SELECT id, nombre, detalle FROM capacitaciones";
		List<Capacitacion> caps = new ArrayList<Capacitacion>();
		try {
		
		cn = Conexion.getConn();
		Statement stm = cn.createStatement();
		ResultSet rs = stm.executeQuery(sql);
		
		while (rs.next()) {
			caps.add(new Capacitacion(rs.getInt("id"), rs.getString("nombre"), rs.getString("detalle")));
		}
		
		rs.close();
		stm.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return caps;
	}

	@Override
	public void update(Capacitacion p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Capacitacion p) {
		// TODO Auto-generated method stub
		
	}

}
