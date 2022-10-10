import wollok.game.*
import jugadores.*
import direcciones.*
import elementos.*
import levels.*

object juego{
	
	method iniciar() {
		self.hacerConfiguracionInicial()
		self.agregarPersonajes()
		self.configurarTeclas()
		self.configurarAcciones()
		game.start()
		game.schedule(1000,{game.say(jugador,"Me muevo con WASD")})	
	}
	
	method configurarTeclas(){
		keyboard.w().onPressDo({jugador.mover(up)})
		keyboard.a().onPressDo({jugador.mover(left)})
		keyboard.s().onPressDo({jugador.mover(down)})
		keyboard.d().onPressDo({jugador.mover(right)}) 
	}
	
	method agregarPersonajes() {
		self.agregarJugador()
	}
	
	method agregarJugador() {
		game.addVisual(jugador) 
	}
	
	method configurarAcciones() {
		//TODO: Código autogenerado 
	}
	

	
	method hacerConfiguracionInicial() {
		game.title("El juego de Lucalentina")
		game.boardGround("aot2.png")
		game.width(24)
		game.height(14)
		game.cellSize(50)
		primerNivel.renderizar()
	}
}