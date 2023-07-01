package m5abpro1.Model.DAO;

import java.util.List;

import m5abpro1.Model.Usuario;

public interface IUsuarioDAO {
	public void create(Usuario u);
	public Usuario readOne(int id);
	public List<Usuario> readAll();
	public void update(Usuario u);
	public void deleteById(int id);
	public void delete(Usuario u);
}
