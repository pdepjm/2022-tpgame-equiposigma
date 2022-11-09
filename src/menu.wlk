import wollok.game.*
import personajes.*
import partida.*
import BotonPersonaje.*

object menu {
	
	//Seleccion del primer jugador
	var personaje1 = null
	var personaje2 = null
	
	var seleccionoJugador1 = false
	var seleccionoJugador2 = false
	
	method ejecutarMenu()
	{
		game.clear()
		game.width(20)
		game.height(12)
		game.cellSize(50)
		game.addVisual(fondo)
		keyboard.enter().onPressDo({fondo.irASeleccionDePersonaje()})
		keyboard.b().onPressDo({fondo.volverAlInicio()})
		//self.configurarSelectores()
		//self.colocarBotones()
		game.onTick(50, "check para iniciar la partida", {self.iniciarPartida()})
		//game.schedule(100, {game.sound("linkinPark.mp3").play()})

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
    method seleccionarZenitsu() {personaje1 = zenitsu; seleccionoJugador1 = true} 
    method seleccionarHolder() {personaje1 = holder; seleccionoJugador1 = true}
    method seleccionarChewbacca() {personaje1 = chewbacca; seleccionoJugador1 = true}
	method seleccionarMessi() {personaje1 = messi; seleccionoJugador1 = true}
	
    method seleccionarGoku2(){personaje2 = goku2; seleccionoJugador2 = true}
    method seleccionarSuperman2(){personaje2 = superman2; seleccionoJugador2 = true}
    method seleccionarZenitsu2() {personaje2 = zenitsu2; seleccionoJugador2 = true}
    method seleccionarHolder2() {personaje2 = holder2; seleccionoJugador2 = true}
    method seleccionarChewbacca2() {personaje2 = chewbacca2; seleccionoJugador2 = true}
    method seleccionarMessi2() {personaje2 = messi2; seleccionoJugador2 = true}
	
	method configurarSelectores()
    {
        keyboard.num1().onPressDo({self.seleccionarSuperman()})
        keyboard.num2().onPressDo({self.seleccionarGoku()})
        keyboard.num3().onPressDo({self.seleccionarZenitsu()})
        keyboard.num4().onPressDo({self.seleccionarHolder()})
        keyboard.num5().onPressDo({self.seleccionarChewbacca()})
		keyboard.num6().onPressDo({self.seleccionarMessi()})
		
        keyboard.t().onPressDo({self.seleccionarSuperman2()})
        keyboard.y().onPressDo({self.seleccionarGoku2()})
        keyboard.u().onPressDo({self.seleccionarZenitsu2()})
        keyboard.i().onPressDo({self.seleccionarHolder2()})
        keyboard.o().onPressDo({self.seleccionarChewbacca2()})
        keyboard.p().onPressDo({self.seleccionarMessi2()})
    }
	
	method reiniciarMenu()
	{
		seleccionoJugador1 = false
		seleccionoJugador2 = false
	}
	
		
}

object fondo{
	var property position = game.at(0,0)
	var property imagenDeFondo = "menuprincipal.png"
	method image() = imagenDeFondo
	method mirarControles(){}
	method volver(){}
	method irASeleccionDePersonaje(){
		imagenDeFondo = "selectorPersonajes.png"
		menu.configurarSelectores()
	}
	method volverAlInicio(){
		imagenDeFondo = "menuprincipal.png"
	}
	method efectoLaser(){}
	method restringeMovimiento(){}
}





