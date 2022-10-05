import wollok.game.*
import direcciones.*

class jugador {
	
	var id 
	var skin
	var teclasUtilizadas
	var property posicion = game.origin()
	
	
	method mover(direccion){
		posicion = direccion.siguientePosicion(posicion)
	}
	
}

object 