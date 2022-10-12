import wollok.game.*
import jugadorClase.*
import cajas.*

class Laser {
	
	const property position 
	
	var property image 
	
	method restringeMovimiento() = false
	method efectoLaser(){}
	
}

class Bomba {
	const property position
	
	var property image = "vacio.png"
	
	method restringeMovimiento() = false
	
	method explotar() {
		
		image = "boom.png"
		game.schedule(1000, {game.removeVisual(self)})
	
	}
	method efectoLaser()
	{
		
	}

}

