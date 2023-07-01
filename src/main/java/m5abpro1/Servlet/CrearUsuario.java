package m5abpro1.Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import m5abpro1.Model.TipoUsuario;
import m5abpro1.Model.Usuario;
import m5abpro1.Model.UsuarioDAOImpl;

/**
 * Servlet implementation class CrearUsuario
 */
public class CrearUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		if (sesion.getAttribute("user") != null) {
			getServletContext().getRequestDispatcher("/vistas/CrearUsuario.jsp").forward(request, response);
	  } else {
		  getServletContext().getRequestDispatcher("/vistas/Login.jsp").forward(request, response);
	  }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UsuarioDAOImpl uDAO = new UsuarioDAOImpl();
		Usuario user = new Usuario();
		
		String nombre = request.getParameter("nombre");
		String tipo = request.getParameter("tipo");
		user.setNombre(nombre);
		user.setTipo(tipo);
		uDAO.create(user);
		
		
		doGet(request, response);
	}

}
