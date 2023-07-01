package m5abpro1.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import m5abpro1.Model.Conexion.Conexion;
import m5abpro1.Model.DAO.IUsuarioDAO;

public class UsuarioDAOImpl implements IUsuarioDAO {
	private Connection cn = null;
	
	@Override
	public void create(Usuario u) {
		String sql = "INSERT INTO usuarios(nombre,tipo) VALUES(?,?)";
		
		try {
		cn = Conexion.getConn();
		PreparedStatement ppStm = cn.prepareStatement(sql);
		ppStm.setString(1, u.getNombre());
		ppStm.setString(2, u.getTipo());
		
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
	public Usuario readOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Usuario> readAll() {
		String sql = "SELECT id, nombre, tipo FROM usuarios";
		List<Usuario> users = new ArrayList<Usuario>();
		try {
			cn = Conexion.getConn();
			Statement stm = cn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			
			while (rs.next()) {
				users.add(new Usuario(rs.getInt("id"), rs.getString("nombre"),rs.getString("tipo")));
			}
			
			rs.close();
			stm.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return users;
	}

	@Override
	public void update(Usuario u) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Usuario u) {
		// TODO Auto-generated method stub
		
	}

}
