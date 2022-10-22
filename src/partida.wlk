import wollok.game.*
import enfrentamiento.*
import direcciones.*
import levels.*

class Partida{
	
	const personaje1
	const personaje2
	
	var victoriasJugador1 = 0
	var victoriasJugador2 = 0
	 
	method jugar()
	{
		self.configurarTeclas()
		self.primerEnfrentamiento()
		//self.mostrarResultados()
		game.title("juegoSigma")
		game.width(20)
		game.height(15)
		game.cellSize(50)
		game.start()
	} 
	
	method primerEnfrentamiento()
	{
		const enfrentamiento = new Enfrentamiento(personaje1 = personaje1, personaje2 = personaje2, nivel = primerNivel)
		enfrentamiento.jugar()
		//game.addVisual(ganadorEnfrentamiento)
		//if (ganadorEnfrentamiento === personaje1) {victoriasJugador1++}
		//if (ganadorEnfrentamiento === personaje2) {victoriasJugador2++
		
	}
	method mostrarResultados()
	{
		game.clear()
		if (victoriasJugador1 > victoriasJugador2)
		{
			const baner = new BannerVictoria(ganador = "personaje 1")
			game.addVisual(baner)
		}
		else
		{
			const baner = new BannerVictoria(ganador = "personaje 2")
			game.addVisual(baner)			
		}
	}
	
		method configurarTeclas(){
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


class BannerVictoria{
	const ganador
	var property position = game.center()
	method text() = "gano el " + ganador
}