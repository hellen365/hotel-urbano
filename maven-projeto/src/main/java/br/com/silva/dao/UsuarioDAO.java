package br.com.silva.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.silva.modelo.Quarto;
import br.com.silva.modelo.Usuario;

public class UsuarioDAO {
      
	private static UsuarioDAO instance;
	private EntityManager em;

	/**
	 * Trabalhando com o padrão de projeto Singleton. Garante que apenas uma
	 * instância dessa classe será criada durante toda a aplicação. 
	 * Estudem em:(https://www.tutorialspoint.com/design_pattern/singleton_pattern.htm).
	 */
	public static UsuarioDAO getInstance() {
		if (instance == null) {
			// Mais de uma Thread solicitando um objeto do banco.
			synchronized (UsuarioDAO.class) {
				if (instance == null) {
					instance = new UsuarioDAO();
				}
			}
		}
		return instance;
	}

	// Responsável por criar uma instância de EntityManager
	private UsuarioDAO() {
		em = getEntityManager();
	}

	private EntityManager getEntityManager() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("hotel"); // Carrega o XML e inicializa as configurações.
		if (em == null) {
			em = emf.createEntityManager();
		}
		return em;
	}

	// Passando o tipo da classe e o id, traz um objeto Usuario.
	public Usuario getByCpf(final long cpf) {
		return em.find(Usuario.class, cpf);
	}

	@SuppressWarnings("unchecked")
	public List<Usuario> findAll() {
		return em.createQuery("FROM " + Usuario.class.getName()).getResultList();
	}

	public void persist(Usuario usuario) {
		try {
			em.getTransaction().begin();
			em.persist(usuario);
			em.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	
	public void merge(Usuario usuario) {
		try {
			em.getTransaction().begin();
			em.merge(usuario);
			em.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	public void remove(Usuario usuario) {
		try {
			em.getTransaction().begin();
			usuario = em.find(Usuario.class, usuario.getCpf());
			em.remove(usuario);
			em.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	public void removeById(final int cpf) {
		try {
			Usuario usuario = getByCpf(cpf);
			remove(usuario);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
