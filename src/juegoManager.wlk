import wollok.game.*
import jugadores.*
import direcciones.*
import levels.*

object juego{
	
	method iniciar() {
		self.hacerConfiguracionInicial()
		self.agregarPersonajes()
		self.configurarTeclas()
		self.configurarAcciones()
		game.start()
	}
	
	method configurarTeclas(){
		game.onTick(50, "caer", {jugador.gravedad()})
		game.onTick(50, "caer", {jugador2.gravedad()})
		keyboard.a().onPressDo{jugador.moverseA(izquierda)}
		keyboard.d().onPressDo{jugador.moverseA(derecha)}
		keyboard.w().onPressDo{jugador.saltar()}
		keyboard.e().onPressDo{jugador.disparar()}
		keyboard.s().onPressDo{jugador.dejarBomba()}

		keyboard.i().onPressDo{jugador2.saltar()}
		keyboard.l().onPressDo{jugador2.moverseA(derecha)}
		keyboard.j().onPressDo{jugador2.moverseA(izquierda)}
		keyboard.p().onPressDo{jugador2.disparar()} 
	}
	
	method agregarPersonajes() {
		self.agregarJugador()
	}
	
	method agregarJugador() {
		game.addVisual(jugador)
		game.addVisual(jugador2)
	}
	
	method configurarAcciones() {
		//TODO: Código autogenerado 
	}
	

	
	method hacerConfiguracionInicial() {
		game.title("juegoSigma")
		game.width(20)
		game.height(15)
		game.cellSize(50)
		segundoNivel.renderizar()
	}
	

	
}