package m5abpro1.Controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import m5abpro1.Model.Capacitacion;
import m5abpro1.Model.Usuario;
import m5abpro1.Model.DAO.UsuarioDAOImpl;

/**
 * Servlet implementation class ListarUsuario
 */
public class ListarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		
		if (sesion.getAttribute("user") != null) {
		UsuarioDAOImpl uDAO = new UsuarioDAOImpl();
		List<Usuario> listado = uDAO.readAll();
		request.setAttribute("listado", listado);
		getServletContext().getRequestDispatcher("/vistas/ListarUsuario.jsp").forward(request, response);
		} else {
			getServletContext().getRequestDispatcher("/vistas/Login.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
