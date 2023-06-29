package m5abpro1.Model.DAO;

import java.util.List;

import m5abpro1.Model.Capacitacion;

public interface ICapacitacionDAO {
	public void create(Capacitacion c);
	public Capacitacion readOne(int id);
	public List<Capacitacion> readAll();
	public void update(Capacitacion c);
	public void deleteById(int id);
	public void delete(Capacitacion c);
}
