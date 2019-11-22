package br.com.silva.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.silva.modelo.Reserva;


public class ReservaDAO {
	private static ReservaDAO instance;
	private EntityManager em;

	/**
	 * Trabalhando com o padrão de projeto Singleton. Garante que apenas uma
	 * instância dessa classe será criada durante toda a aplicação. 
	 * Estudem em:(https://www.tutorialspoint.com/design_pattern/singleton_pattern.htm).
	 */
	public static ReservaDAO getInstance() {
		if (instance == null) {
			// Mais de uma Thread solicitando um objeto do banco.
			synchronized (ReservaDAO.class) {
				if (instance == null) {
					instance = new ReservaDAO();
				}
			}
		}
		return instance;
	}

	// Responsável por criar uma instância de EntityManager
	private ReservaDAO() {
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
	public Reserva getById(final int Id) {
		return em.find(Reserva.class, Id);
	}

	@SuppressWarnings("unchecked")
	public List<Reserva> findAll() {
		return em.createQuery("FROM " + Reserva.class.getName()).getResultList();
	}

	public void persist(Reserva reserva) {
		try {
			em.getTransaction().begin();
			em.persist(reserva);
			em.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	
	public void merge(Reserva reserva) {
		try {
			em.getTransaction().begin();
			em.merge(reserva);
			em.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	public void remove(Reserva reserva) {
		try {
			em.getTransaction().begin();
			reserva = em.find(Reserva.class, reserva.getId());
			em.remove(reserva);
			em.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	public void removeById(final int id) {
		try {
			Reserva reserva = getById(id);
			remove(reserva);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
