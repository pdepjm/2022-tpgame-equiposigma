import wollok.game.*
import jugadorClase.*
import level.*
import levels.*
import direcciones.*

class Enfrentamiento {
	const personaje1
	const personaje2
	const nivel
	var flagTerminarEnfrentamiento = false
	var property ganador = null
	
	
	method jugar()
	{
		nivel.renderizar()
		self.configurarTeclas()
		game.addVisual(personaje1)
		game.addVisual(personaje2)
		
		const texto1 = new TextoVivo(jugador = personaje1)
		const texto2 = new TextoVivo(jugador = personaje2, position = game.at(12,10) )
		game.addVisual(texto1)
		game.addVisual(texto2)
		
		game.onTick(100, "chequear si murio el jugador 1", {self.murioJugador1()})
		game.onTick(100,"chequear si murio el jugador 2", {self.murioJugador2()})
		game.onTick(100,"chequear si las condiciones estan dadas para terminar la partida", {self.terminarEnfrentamiento()})
		//return ganador		
	}
	
	method murioJugador1()
	{
		if (personaje1.muerto())
		{
			self.ganador(personaje2)
			flagTerminarEnfrentamiento = true
		}
	}
	
	method murioJugador2()
	{
		if (personaje2.muerto())
		{
			self.ganador(personaje1)
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
			game.schedule(1500, {game.clear()})
		}
	}
	
	method configurarTeclas(){
		game.width(20)
		game.height(15)
		game.cellSize(50)
		game.onTick(50, "caer", {personaje1.gravedad()})
		game.onTick(50, "caer", {personaje2.gravedad()})
		
		keyboard.a().onPressDo{personaje1.moverseA(izquierda)}
		keyboard.d().onPressDo{personaje1.moverseA(derecha)}
		keyboard.w().onPressDo{personaje1.saltar()}
		keyboard.e().onPressDo{personaje1.disparar()}
		keyboard.s().onPressDo{personaje1.dejarBomba()}

		keyboard.i().onPressDo{personaje2.saltar()}
		keyboard.l().onPressDo{personaje2.moverseA(derecha)}
		keyboard.j().onPressDo{personaje2.moverseA(izquierda)}
		keyboard.p().onPressDo{personaje2.disparar()} 
		keyboard.k().onPressDo{personaje2.dejarBomba()}
	}
	

}

class Texto{
	const ganador 
	var property position = game.center()
	method text() = ganador.nombre() + " gano"
}
class TextoVivo{
	const jugador
	var property position = game.at(10,10)
	method text() = jugador.muerto().toString()
}
