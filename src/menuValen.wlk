import wollok.game.*
import personajes.*
import partida.*

object menu {
	
	//Seleccion del primer jugador
	var personaje1 = null
	var personaje2 = null
	
	var seleccionoJugador1 = false
	var seleccionoJugador2 = false
	
	
	method ejecutarMenu()
	{
		game.width(20)
		game.height(15)
		game.cellSize(50)
		self.configurarSelectores()
		game.onTick(50, "check para iniciar la partida", {self.iniciarPartida()})

	}
	
	method iniciarPartida()
	{
		if (seleccionoJugador1 && seleccionoJugador2)
		{
		game.removeTickEvent("check para iniciar la partida")
		const partida = new Partida(personaje1 = personaje1, personaje2 = personaje2)
		partida.jugarPrimerNivel()
		}		
	}
	
	method seleccionarGoku(){personaje1 = goku; seleccionoJugador1 = true}
	method seleccionarSuperman() {personaje1 = superman; seleccionoJugador1 = true}

	method seleccionarSuperman2(){personaje2 = superman; seleccionoJugador2 = true}
	method seleccionarZenitsu2() {personaje2 = zenitsu; seleccionoJugador2 = true}	
	
	method configurarSelectores()
	{
		keyboard.num1().onPressDo({self.seleccionarGoku()})
		keyboard.num2().onPressDo({self.seleccionarSuperman()})
		keyboard.num3().onPressDo({self.seleccionarSuperman2()})
		keyboard.num4().onPressDo({self.seleccionarZenitsu2()})
	}
	
	
	
}
