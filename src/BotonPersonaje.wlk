import wollok.game.*

class BotonPersonaje{
	
	const posicion
	const botonAPresionar
	const personaje
	method position() = posicion
	method text() = botonAPresionar + " - " + personaje.nombre()

}

object logo{
	const property position = game.at(8, 9)
	method image() = "dimensionclash.png"
}
