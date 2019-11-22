package br.com.silva.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="reserva")
public class Reserva {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(length=30)
	private String hotel;
	
	@Column(length=10)
	private String entrada;
	
	@Column(length=10)
	private String saida;
	
	@Column(length=10)
	private int adulto;
	
	@Column(length=10)
	private int crianca;
	
	@Column(length=10)
	private int tipoQuarto;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHotel() {
		return hotel;
	}

	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	public String getEntrada() {
		return entrada;
	}

	public void setEntrada(String entrada) {
		this.entrada = entrada;
	}

	public String getSaida() {
		return saida;
	}

	public void setSaida(String saida) {
		this.saida = saida;
	}

	public int getAdulto() {
		return adulto;
	}

	public void setAdulto(int adulto) {
		this.adulto = adulto;
	}

	public int getCrianca() {
		return crianca;
	}

	public void setCrianca(int crianca) {
		this.crianca = crianca;
	}

	public int getTipoQuarto() {
		return tipoQuarto;
	}

	public void setTipoQuarto(int tipoQuarto) {
		this.tipoQuarto = tipoQuarto;
	}
	
}
