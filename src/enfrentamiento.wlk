import wollok.game.*
import jugadorClase.*
import level.*
import levels.*

class Enfrentamiento {
	const personaje1
	const personaje2
	const nivel
	var flagTerminarEnfrentamiento = false
	var ganador = null
	
	method murioJugador1()
	{
		if (personaje1.muerto())
		{
			ganador = personaje2
			flagTerminarEnfrentamiento = true
		}
	}
	
	method murioJugador2()
	{
		if (personaje2.muerto())
		{
			ganador = personaje1
			flagTerminarEnfrentamiento = true
		}
	}
	method terminarEnfrentamiento()
	{
		if (flagTerminarEnfrentamiento)
		{
			const texto = new Texto(ganador = ganador)
			game.removeTickEvent("chequear si murio el jugador 1")
			game.removeTickEvent("chequear si murio el jugador 2")
			game.removeTickEvent("chequear si las condiciones estan dadas para terminar la partida")
			game.addVisual(texto)
		}
	}
	
	method jugar()
	{
		nivel.renderizar()
		game.addVisual(personaje1)
		game.addVisual(personaje2)
		game.onTick(500, "chequear si murio el jugador 1", {self.murioJugador1()})
		game.onTick(500,"chequear si murio el jugador 2", {self.murioJugador2()})
		game.onTick(550,"chequear si las condiciones estan dadas para terminar la partida", {self.terminarEnfrentamiento()})
		//return ganador		
	}
}

class Texto{
	const ganador 
	var property position = game.center()
	method text() = ganador.nombre() + " gano"
}
