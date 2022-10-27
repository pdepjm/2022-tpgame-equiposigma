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
		game.boardGround("fondo.png")
		self.configurarSelectores()
		self.colocarBotones()
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

    method seleccionarGoku2(){personaje2 = goku2; seleccionoJugador2 = true}
    method seleccionarSuperman2(){personaje2 = superman2; seleccionoJugador2 = true}
    method seleccionarZenitsu2() {personaje2 = zenitsu2; seleccionoJugador2 = true}
    method seleccionarHolder2() {personaje2 = holder2; seleccionoJugador2 = true}
    method seleccionarChewbacca2() {personaje2 = chewbacca2; seleccionoJugador2 = true}
	
	method configurarSelectores()
    {
        keyboard.num1().onPressDo({self.seleccionarSuperman()})
        keyboard.num2().onPressDo({self.seleccionarGoku()})
        keyboard.num3().onPressDo({self.seleccionarZenitsu()})
        keyboard.num4().onPressDo({self.seleccionarHolder()})
        keyboard.num5().onPressDo({self.seleccionarChewbacca()})

        keyboard.num6().onPressDo({self.seleccionarSuperman2()})
        keyboard.num7().onPressDo({self.seleccionarGoku2()})
        keyboard.num8().onPressDo({self.seleccionarZenitsu2()})
        keyboard.num9().onPressDo({self.seleccionarHolder2()})
        keyboard.num0().onPressDo({self.seleccionarChewbacca2()})
    }
	method colocarBotones()
    {
        const boton1 = new BotonPersonaje(posicion = game.at(9,7), botonAPresionar = "1", personaje = superman)
        const boton2 = new BotonPersonaje(posicion = game.at(9,6), botonAPresionar = "2", personaje = goku)
        const boton3 = new BotonPersonaje(posicion = game.at(9,5), botonAPresionar = "3", personaje = zenitsu)
        const boton4 = new BotonPersonaje(posicion = game.at(9,4), botonAPresionar = "4", personaje = holder)
        const boton5 = new BotonPersonaje(posicion = game.at(9,3), botonAPresionar = "5", personaje = chewbacca)
        const boton6 = new BotonPersonaje(posicion = game.at(11,7), botonAPresionar = "6", personaje = superman2)
        const boton7 = new BotonPersonaje(posicion = game.at(11,6), botonAPresionar = "7", personaje = goku2)
        const boton8 = new BotonPersonaje(posicion = game.at(11,5), botonAPresionar = "8", personaje = zenitsu2)
        const boton9 = new BotonPersonaje(posicion = game.at(11,4), botonAPresionar = "9", personaje = holder2)
        const boton0 = new BotonPersonaje(posicion = game.at(11,3), botonAPresionar = "0", personaje = chewbacca)

        const botones = [boton1, boton2, boton3, boton4, boton5, boton6, boton7, boton8, boton9, boton0]
		
		botones.forEach({boton => game.addVisual(boton)})
		game.addVisual(logo)
	}
	
	method reiniciarMenu()
	{
		seleccionoJugador1 = false
		seleccionoJugador2 = false
	}
	
		
}





