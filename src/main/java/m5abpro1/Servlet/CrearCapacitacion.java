package m5abpro1.Servlet;

import java.io.IOException;

import Model.Capacitacion;
import Model.CapacitacionProcesos;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CrearCapacitacion
 */
public class CrearCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearCapacitacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/vistas/CrearCapacitacion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Capacitacion cap = new Capacitacion();
		cap.setRutCliente(request.getParameter("rutCliente"));
		cap.setDia(request.getParameter("dia"));
		cap.setHora(request.getParameter("hora"));
		cap.setLugar(request.getParameter( "lugar"));
		cap.setDuracion(request.getParameter("duracion"));
		cap.setCantAsist(request.getParameter("cantidadAsistentes"));
		
		Model.CapacitacionProcesos.addCapacitacion(cap);
		
			
		doGet(request, response);
	}

}
