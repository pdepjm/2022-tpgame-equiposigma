import wollok.game.*
import jugador.*

object juego{
	
	method iniciar() {
		self.hacerConfiguracionInicial()
		self.agregarPersonajes()
		self.configurarTeclas()
		self.configurarAcciones()
		game.start()
		game.schedule(1000,{game.say(mario,"Me muevo con WASD")})	
	}
	
	method configurarTeclas(){
		keyboard.w().onPressDo({jugador.mover(arriba)})
		keyboard.a().onPressDo({jugador.mover(izquierda)})
		keyboard.s().onPressDo({jugador.mover(derecha)})
		keyboard.d().onPressDo({jugador.mover(derecha)}) 
	}
}