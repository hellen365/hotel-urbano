package br.com.silva.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.silva.modelo.Quarto;


public class QuartoDAO {
	
	private static QuartoDAO instance;
	private EntityManager em;

	/**
	 * Trabalhando com o padrão de projeto Singleton. Garante que apenas uma
	 * instância dessa classe será criada durante toda a aplicação. 
	 * Estudem em:(https://www.tutorialspoint.com/design_pattern/singleton_pattern.htm).
	 */
	public static QuartoDAO getInstance() {
		if (instance == null) {
			// Mais de uma Thread solicitando um objeto do banco.
			synchronized (QuartoDAO.class) {
				if (instance == null) {
					instance = new QuartoDAO();
				}
			}
		}
		return instance;
	}

	// Responsável por criar uma instância de EntityManager
	private QuartoDAO() {
		em = getEntityManager();
	}

	private EntityManager getEntityManager() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("hotel"); // Carrega o XML e inicializa as configurações.
		if (em == null) {
			em = emf.createEntityManager();
		}
		return em;
	}

	// Passando o tipo da classe e o id, traz um objeto Livro.
	public Quarto getById(final int id) {
		return em.find(Quarto.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Quarto> findAll() {
		return em.createQuery("FROM " + Quarto.class.getName()).getResultList();
	}

	public void persist(Quarto quarto) {
		try {
			em.getTransaction().begin();
			em.persist(quarto);
			em.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	
	public void merge(Quarto quarto) {
		try {
			em.getTransaction().begin();
			em.merge(quarto);
			em.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	public void remove(Quarto quarto) {
		try {
			em.getTransaction().begin();
			quarto = em.find(Quarto.class, quarto.getId());
			em.remove(quarto);
			em.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	public void removeById(final int id) {
		try {
			Quarto quarto = getById(id);
			remove(quarto);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
