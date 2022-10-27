import wollok.game.*
import jugadorClase.*
class Laser {
	
	const property position 
	
	const property sonido 
	
	var property image 
	
	method restringeMovimiento() = false
	method efectoLaser(){}
	
}

class Bomba {
	const property position
	
	var property image = "bomba.png"
	
	method restringeMovimiento() = false
	
	method esconder() {
		image = "vacio.png"
	}
	
	method explotar() {
		
		image = "boom.png"
		game.schedule(1000, {game.removeVisual(self)})
	
	}
	method efectoLaser()
	{
		
	}

}

