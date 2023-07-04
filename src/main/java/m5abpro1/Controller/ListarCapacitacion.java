package m5abpro1.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import m5abpro1.Model.Capacitacion;
import m5abpro1.Model.DAO.CapacitacionDAOImpl;

/**
 * Servlet implementation class ListarCapacitacion
 */
public class ListarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ListarCapacitacion() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		
		if (sesion.getAttribute("user") != null) {
		CapacitacionDAOImpl cDAO = new CapacitacionDAOImpl();
		//List<CapacitacionOld> listado = CapacitacionProcesos.getListado();
		List<Capacitacion> listado = cDAO.readAll();
		request.setAttribute("listado", listado);
		getServletContext().getRequestDispatcher("/vistas/ListarCapacitacion.jsp").forward(request, response);
		} else {
			getServletContext().getRequestDispatcher("/vistas/Login.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
