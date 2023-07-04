package m5abpro1.Controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import m5abpro1.Model.Capacitacion;
import m5abpro1.Model.DAO.CapacitacionDAOImpl;


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
		HttpSession sesion = request.getSession();
		if (sesion.getAttribute("user") != null) {
		getServletContext().getRequestDispatcher("/vistas/CrearCapacitacion.jsp").forward(request, response);
	  } else {
		  getServletContext().getRequestDispatcher("/vistas/Login.jsp").forward(request, response);
	  }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CapacitacionDAOImpl cDAO = new CapacitacionDAOImpl();
		Capacitacion cap = new Capacitacion();
		
		cap.setNombre(request.getParameter("nombre"));
		cap.setDetalle(request.getParameter("detalle"));
		cDAO.create(cap);
			
		getServletContext().getRequestDispatcher("/ListarCapacitacion").forward(request, response);
	}

}
