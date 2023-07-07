package m5abpro1.Controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import m5abpro1.Model.TipoUsuario;
import m5abpro1.Model.Usuario;
import m5abpro1.Model.DAO.UsuarioDAOImpl;

/**
 * Servlet implementation class EditarUsuario
 */
public class EditarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UsuarioDAOImpl uDAO= new UsuarioDAOImpl();
		Usuario user = new Usuario();
		int id = Integer.parseInt(request.getParameter("user-id"));
		String nombre = request.getParameter("nombre");
		String tipo = request.getParameter("tipo");
		
		System.out.println(tipo);
		
		TipoUsuario tipoEnum = null;
		
		
		if (tipo.equals("Cliente")) {
            tipoEnum = TipoUsuario.CLIENTE;
            user.setRut(request.getParameter("rut"));
           
        } else if (tipo.equals("Profesional")) {
        	tipoEnum = TipoUsuario.PROFESIONAL;
        	user.setTitulo(request.getParameter("titulo"));
        	
        } else if (tipo.equals("Administrativo")) {
        	tipoEnum = TipoUsuario.ADMINISTRATIVO;
        	user.setArea(request.getParameter("area"));
        }
		
		user.setId(id);
		user.setNombre(nombre);
		user.setTipo(tipoEnum);
		
		uDAO.update(user);
		
		getServletContext().getRequestDispatcher("/ListarUsuario").forward(request, response);
		
	}

}
