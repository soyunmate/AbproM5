package m5abpro1.Model.DAO;

import java.sql.Connection;
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
		// TODO Auto-generated method stub
		
	}

	@Override
	public Capacitacion readOne(int id) {
		// TODO Auto-generated method stub
		return null;
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
