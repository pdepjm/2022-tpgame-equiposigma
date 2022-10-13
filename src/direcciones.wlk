import wollok.game.*
import jugadorClase.*
import cajas.*


//Delego el buscar una posicion en una direccion en una clase
//Obtengo la linea de disparo del laser en una direccion

object izquierda {
	method posicionSiguiente(posicionActual) = posicionActual.left(1)
	
	method imagen(jugador) = jugador.imagenIzquierda()
		
	method hayBloqueoEnPosicion(posicion)
	{
		return (game.getObjectsIn(posicion).any{objeto => objeto.restringeMovimiento()})
	}
	
	method lineaDeTiro(posicion)
	{
		const valorDeY = posicion.y()
		const valoresDeX = 0..(game.width())
		const xALaIzquierda = valoresDeX.filter({x => x < posicion.x()})
		var lineaDeTiro = []
		xALaIzquierda.forEach({x => lineaDeTiro.add(game.at(x, valorDeY))})
		const primeraPosicionBloqueada = lineaDeTiro.reverse().findOrDefault({pos => self.hayBloqueoEn(pos)}, lineaDeTiro.first())
		lineaDeTiro = lineaDeTiro.filter({pos => pos.x() > primeraPosicionBloqueada.x()})
		return lineaDeTiro
		
	}
	method hayBloqueoEn(posicion)
	{
		return (game.getObjectsIn(posicion).any({objeto => objeto.restringeMovimiento()}))
	}
}


object derecha {
	method posicionSiguiente(posicionActual) = posicionActual.right(1) 
	
	method imagen(jugador) = jugador.imagenDerecha()
	
	
	method lineaDeTiro(posicion)
	{
		const valorDeY = posicion.y()
		const valoresDeX = 0..(game.width())
		const xALaDerecha = valoresDeX.filter({x => x > posicion.x()})
		var lineaDeTiro = []
		xALaDerecha.forEach({x => lineaDeTiro.add(game.at(x, valorDeY))})
		const primeraPosicionBloqueada = lineaDeTiro.findOrDefault({pos => self.hayBloqueoEn(pos)}, lineaDeTiro.last())
		lineaDeTiro = lineaDeTiro.filter({pos => pos.x() < primeraPosicionBloqueada.x() })
		
		return lineaDeTiro
	}
	
	method hayBloqueoEn(posicion)
	{
		return (game.getObjectsIn(posicion).any({objeto => objeto.restringeMovimiento()}))
	}
}

object arriba {
	method posicionSiguiente(posicionActual) = posicionActual.up(1)
	
	method imagen(jugador) {}
}

object abajo {
	method posicionSiguiente(posicionActual) = posicionActual.down(1) 
	
	method imagen(jugador){}
}

