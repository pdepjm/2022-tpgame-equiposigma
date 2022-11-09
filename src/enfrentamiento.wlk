import wollok.game.*
import jugadorClase.*
import level.*
import levels.*
import direcciones.*

class Enfrentamiento {
	const personaje1
	const personaje2
	const nivel
	var property flagTerminarEnfrentamiento = false
	var property ganador = null
	
	
	method jugar()
	{
		self.configurarTeclas()
		self.ubicarJugadores()
		nivel.renderizar()
		game.addVisual(personaje1)
		game.addVisual(personaje2)
				
		game.onTick(100, "chequear si murio el jugador 1", {self.murioJugador1()})
		game.onTick(100,"chequear si murio el jugador 2", {self.murioJugador2()})
		game.onTick(110,"chequear si las condiciones estan dadas para terminar la partida", {self.terminarEnfrentamiento()})	
	}
	
	method ubicarJugadores()
	{
		personaje1.muerto(false)         //Delegar esto a un metodo del jugador
        personaje2.muerto(false)
        personaje1.estaDisparando(false)
        personaje2.estaDisparando(false)
        personaje1.estaCayendo(false)
        personaje2.estaCayendo(false)
        personaje1.cantidadDeBombas(3) 
        personaje2.cantidadDeBombas(3)

        personaje1.position(nivel.spawnJ1())
        personaje2.position(nivel.spawnJ2())
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
			game.removeTickEvent("chequear si murio el jugador 1")
			game.removeTickEvent("chequear si murio el jugador 2")
			game.removeTickEvent("chequear si las condiciones estan dadas para terminar la partida")
		}
	}
	
	method configurarTeclas(){
		game.onTick(50, "caer", {personaje1.gravedad()})
		game.onTick(50, "caer", {personaje2.gravedad()})
		game.onTick(50, "morir", {personaje1.posicionMuerte()})
        game.onTick(50, "morir", {personaje2.posicionMuerte()})
		
		keyboard.a().onPressDo{personaje1.moverseA(izquierda)}
		keyboard.d().onPressDo{personaje1.moverseA(derecha)}
		keyboard.w().onPressDo{personaje1.saltar()}
		keyboard.r().onPressDo{personaje1.disparar()}
		keyboard.s().onPressDo{personaje1.dejarBomba()}
		keyboard.t().onPressDo{personaje1.activarEscudo()}
		

		keyboard.up().onPressDo{personaje2.saltar()}
		keyboard.right().onPressDo{personaje2.moverseA(derecha)}
		keyboard.left().onPressDo{personaje2.moverseA(izquierda)}
		keyboard.p().onPressDo{personaje2.disparar()} 
		keyboard.down().onPressDo{personaje2.dejarBomba()}
		keyboard.o().onPressDo{personaje2.activarEscudo()}
	}
}

