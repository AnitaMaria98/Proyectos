package fifa20;

import java.util.ArrayList;

public class Jugador {
	private int cod_jugador;
	private String nombre;
	private int cod_equipo;
	private String pierna;
	private int altura;
	private String pais;
	private Carta carta=new Carta();
	
	public Jugador() {
		
	}
	
	public Jugador(int cod_jugador, String nombre, int cod_equipo, String pierna, int altura, String pais,Carta carta) {
		super();
		this.cod_jugador = cod_jugador;
		this.nombre = nombre;
		this.cod_equipo = cod_equipo;
		this.pierna = pierna;
		this.altura = altura;
		this.pais = pais;
		this.carta=carta;
		
	}
	
	public int getCod_jugador() {
		return cod_jugador;
	}

	public void setCod_jugador(int cod_jugador) {
		this.cod_jugador = cod_jugador;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getCod_equipo() {
		return cod_equipo;
	}

	public void setCod_equipo(int cod_equipo) {
		this.cod_equipo = cod_equipo;
	}

	public String getPierna() {
		return pierna;
	}

	public void setPierna(String pierna) {
		this.pierna = pierna;
	}

	public int getAltura() {
		return altura;
	}

	public void setAltura(int altura) {
		this.altura = altura;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}
	

		public Carta getCarta() {
		return carta;
	}

	public void setCarta(Carta carta) {
		this.carta = carta;
	}
	

	



	

	@Override
	public String toString() {
		return "Jugador [cod_jugador=" + cod_jugador + ", nombre=" + nombre + ", cod_equipo=" + cod_equipo + ", pierna="
				+ pierna + ", altura=" + altura + ", pais=" + pais + ", carta=" + carta  + "]";
	}

	public void mostrarJugadorEq() {
		System.out.println(nombre+" - Altura: "+altura+" - Pierna: "+pierna);
	}

}
