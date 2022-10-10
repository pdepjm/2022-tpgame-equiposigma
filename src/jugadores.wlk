import wollok.game.*
import direcciones.*

object jugador {
	
	var id 
	var skin
	var teclasUtilizadas
	var property position = game.at(8,8)
	
	
	method mover(direccion){
		position = direccion.siguientePosicion(position)
	}
	
	method image() { return "pepita.png"}
	
}

