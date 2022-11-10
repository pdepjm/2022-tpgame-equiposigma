import wollok.game.*
import jugadorClase.*

//Delego el buscar una posicion en una direccion en una clase
//Obtengo la linea de disparo del laser en una direccion

class Direccion{
	method posicionSiguiente(posicionActual)
	method modificarOrientacion(jugador)
	method lineaDeTiro(posicion){
		const valorDeY = posicion.y()
		const valoresDeX=  [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
		return [valoresDeX,valorDeY]
	}
}

object izquierda inherits Direccion{
	override method posicionSiguiente(posicionActual) = posicionActual.left(1)
	
	override method modificarOrientacion(jugador)
	{
		jugador.cambiarImagen(jugador.imagenIzquierda())
		jugador.orientacion(self)
	}
		
	method hayBloqueoEnPosicion(posicion)
	{
		return (game.getObjectsIn(posicion).any{objeto => objeto.restringeMovimiento()})
	}
	
	override method lineaDeTiro(posicion)
	{
		const xALaIzquierda = (super(posicion).get(0)).filter({x => x < posicion.x()})
		var lineaDeTiro = []
		xALaIzquierda.forEach({x => lineaDeTiro.add(game.at(x, (super(posicion).get(1))))})
		const primeraPosicionBloqueada = lineaDeTiro.reverse().findOrDefault({pos => self.hayBloqueoEn(pos)}, lineaDeTiro.first())
		lineaDeTiro = lineaDeTiro.filter({pos => pos.x() > primeraPosicionBloqueada.x()})
		return lineaDeTiro
		
	}
	method hayBloqueoEn(posicion)
	{
		return (game.getObjectsIn(posicion).any({objeto => objeto.restringeMovimiento()}))
	}
}


object derecha inherits Direccion {
	override method posicionSiguiente(posicionActual) = posicionActual.right(1) 
	
	override method modificarOrientacion(jugador)
	{
		jugador.cambiarImagen(jugador.imagenDerecha())
		jugador.orientacion(self)
	}
	
	
	override method lineaDeTiro(posicion)
	{
		const xALaDerecha = (super(posicion).get(0)).filter({x => x > posicion.x()})
		var lineaDeTiro = []
		xALaDerecha.forEach({x => lineaDeTiro.add(game.at(x, (super(posicion).get(1))))})
		const primeraPosicionBloqueada = lineaDeTiro.findOrDefault({pos => self.hayBloqueoEn(pos)}, lineaDeTiro.last())
		lineaDeTiro = lineaDeTiro.filter({pos => pos.x() < primeraPosicionBloqueada.x() })
		
		return lineaDeTiro
	}
	
	method hayBloqueoEn(posicion)
	{
		return (game.getObjectsIn(posicion).any({objeto => objeto.restringeMovimiento()}))
	}
}

object arriba inherits Direccion {
	override method posicionSiguiente(posicionActual) = posicionActual.up(1)
	
	override method modificarOrientacion(jugador){} 
}

object abajo inherits Direccion{
	override method posicionSiguiente(posicionActual) = posicionActual.down(1) 
	
	override method modificarOrientacion(jugador){}
}