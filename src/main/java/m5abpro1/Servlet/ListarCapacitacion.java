package m5abpro1.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import m5abpro1.Model.Capacitacion;
import m5abpro1.Model.CapacitacionProcesos;

/**
 * Servlet implementation class ListarCapacitacion
 */
public class ListarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ListarCapacitacion() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Capacitacion> listado = CapacitacionProcesos.getListado();
		request.setAttribute("listado", listado);
		getServletContext().getRequestDispatcher("/vistas/ListarCapacitacion.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
