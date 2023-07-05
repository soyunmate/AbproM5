package m5abpro1.Controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import m5abpro1.Model.TipoUsuario;
import m5abpro1.Model.Usuario;
import m5abpro1.Model.DAO.UsuarioDAOImpl;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/vistas/Login.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("nombre");
		String password = request.getParameter("password");
		UsuarioDAOImpl uDAO = new UsuarioDAOImpl();
		List<Usuario> listado = uDAO.readAll();
		Boolean isLogged = false;
		String tipo = "serverAdmin";
		int id = 0;
		
		for(Usuario u : listado) {
			if (u.getNombre().equals(user)) {
				if (uDAO.readOne(u.getId()).getPw().equals(password)) {
					isLogged = true;
					
					
					if (u.getTipo() == TipoUsuario.CLIENTE) tipo = "Cliente";
					if (u.getTipo() == TipoUsuario.PROFESIONAL) tipo = "Profesional";
					if (u.getTipo() == TipoUsuario.ADMINISTRATIVO) tipo = "Administrativo";
					
					id = u.getId();
					System.out.println("usuario encontrado");
				} 
				
			} 
		}
		
		if( (user.contentEquals("admin") && password.contentEquals("1234")) || isLogged ) {
			
			HttpSession sesion = request.getSession();
			
			sesion.setAttribute("user", user);
			sesion.setAttribute("tipo", tipo);
			sesion.setAttribute("id", id);
			
			getServletContext().getRequestDispatcher("/vistas/Inicio.jsp").forward(request, response);
		} else {
			getServletContext().getRequestDispatcher("/vistas/Login.jsp").forward(request, response);
		}
	
	}

}
