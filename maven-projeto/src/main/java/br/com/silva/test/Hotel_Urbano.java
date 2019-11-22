package br.com.silva.test;

import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.silva.dao.DadosCartaoDAO;
import br.com.silva.dao.QuartoDAO;
import br.com.silva.dao.UsuarioDAO;
import br.com.silva.modelo.DadosCartao;
import br.com.silva.modelo.Quarto;
import br.com.silva.modelo.Usuario;
import sun.security.jca.GetInstance;

/**
 * Servlet implementation class Hotel_Urbano
 */
@WebServlet("/Hotel_Urbano")
public class Hotel_Urbano extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Hotel_Urbano() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// String btnAdd = request.getParameter("btnAdd");

		 //if("adicionar".equals(btnAdd)) {

		   //  exibirReservar(request,response);
    // }

		String btn_registro = request.getParameter("btn_registro");
		 if("btn_registro".equals("btn_registro")) {
		      cadastrarUsuario(request,response);
		 }
		 
		 String confirmarReserva = request.getParameter("confirmarReserva");
		if("confirmarReserva".equals("confirmarReserva")) {
		      cadastrarCartao(request,response);
		 }
		 
		String btnLogin = request.getParameter("btnLogin");
		if ("btnLogin".equals("btnLogin")) {
			login(request, response);
	}

	}

	protected void reservar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String tipo = request.getParameter("quarto");

		String msg = "";

		try {

			Quarto quarto = new Quarto();
			quarto.setTipo(tipo);

			// Inserindo dados no banco
			QuartoDAO dao = QuartoDAO.getInstance();
			dao.persist(quarto);

			String mensagem = "Dados gravados com sucesso!";
			request.setAttribute("mensagem", mensagem);

		} catch (Exception ex) {
			msg = "ERROR: " + ex.getMessage();
			ex.printStackTrace();

		} finally {

			request.getRequestDispatcher("acomodacoes.jsp").forward(request, response);

		}

	}

	protected void exibirReservar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String msg = "";

		try {

			request.getRequestDispatcher("acomodacoes.jsp").forward(request, response);

		} catch (Exception ex) {
			msg = "ERROR: " + ex.getMessage();
			ex.printStackTrace();

		} finally {

		}

	}

	protected void cadastrarUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Long cpf = Long.parseLong(request.getParameter("cpf"));
		String nome = request.getParameter("nome");
		String telefone = request.getParameter("telefone");
		String confirmeEmail = request.getParameter("confirmeEmail");
		String password = request.getParameter("password");

		String msg = "";

		try {

			Usuario user = new Usuario();
			user.setCpf(cpf);
			user.setNome(nome);
			user.setEmail(confirmeEmail);
			user.setTelefone(telefone);
			user.setPassword(password);

			// Inserindo dados no banco
			UsuarioDAO dao = UsuarioDAO.getInstance();
			dao.persist(user);

			String mensagem = "Dados gravados com sucesso!";
			request.setAttribute("mensagem", mensagem);

		} catch (Exception ex) {
			msg = "ERROR: " + ex.getMessage();
			ex.printStackTrace();

		} finally {

			request.getRequestDispatcher("dadosCartao.jsp").forward(request, response);

		}

	}

	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		    long cpf = Long.parseLong(request.getParameter("cpf"));
		    String password = request.getParameter("password");
		    
		    Usuario user = new Usuario();
		    UsuarioDAO dao =  UsuarioDAO.getInstance();
		    user = dao.getByCpf(cpf);
		    
		    if(user!= null) {

				String msg = ""+user.getNome();
				request.setAttribute("msg", msg);
		      
			    request.getRequestDispatcher("teste.jsp").forward(request, response);
		    }else{
		        request.getRequestDispatcher("check-out.jsp").forward(request, response);
		    }
		   	
		

	}
	
	

}
