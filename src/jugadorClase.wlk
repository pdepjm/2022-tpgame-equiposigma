import wollok.game.*
import direcciones.*

import laser.*
import level.*
import levels.*

class Jugador {
	
	var property muerto = false
	
	var property position //= game.at(3,2)
	var property estaDefendiendo = false
	var property estaSaltando = false
	var property estaDisparando = false
	var property estaCayendo = false
	var property cantidadDeBombas = 3
	var property cantidadDeEscudos = 3
	var property orientacion 
	var property imagen 
	const property nombre
	const property imagenIzquierda 				//Necesito esta variable definida en la clase jugador, asi puedo modificar la imagen de la orientacion de una manera no-hardcodeada
												// y modificarlas desde los objetos direccion. Ademas, puedo instanciar jugadores y cambiarles las imagenes
	const property imagenDerecha 
	
	const property imagenDisparo 
	
	const property imagenDisparoIzquierda 
	
	const property imagenEscudo
	
	const property imagenEscudoIzquierda
	
	const property poder
	
	const property sonidoPoder 
	
	const property imagenDeVictoria
	
	method image() = imagen
	
	method cambiarImagen(nuevaImagen) {imagen = nuevaImagen}

	
	method restringeMovimiento() = estaDefendiendo
	
	method efectoLaser()
	{	if(estaDefendiendo){}
		else {
		muerto = true
		game.removeVisual(self)	//Muere si el laser colisiona con el jugador
		}
	}
	
	method activarEscudo(){
		if(cantidadDeEscudos > 0){
		estaDefendiendo = true
		if (orientacion == derecha) {
			self.cambiarImagen(imagenEscudo)
			game.schedule(3000, {self.cambiarImagen(imagenDerecha)})
		}
		else {
			self.cambiarImagen(imagenEscudoIzquierda)
			game.schedule(3000, {self.cambiarImagen(imagenIzquierda)})
		}
		game.schedule(3000, {estaDefendiendo = false})
		cantidadDeEscudos -= 1
	}}
	
	method moverseA(direccion)
	{
		const objetosCercanos = game.getObjectsIn(direccion.posicionSiguiente(position)) //Obtengo los objetos en la posicion hacia la que quiero mover a mi jugador
		
		const puedeAvanzar = !objetosCercanos.any({objetoCercano => objetoCercano.restringeMovimiento()}) //Si algun objeto restringe el movimiento (por ej, las cajas), el jugador no puede avanzar
		
		if (puedeAvanzar && !self.estaDisparando()) //El jugador no puede moverse si hay un objeto o si esta disparando
		{
			position = direccion.posicionSiguiente(position)
			direccion.modificarOrientacion(self) 
			
		}	
	}
	
	method disparar()
	{
		if(not muerto)
		{
			if ( self.orientacion() === derecha ) {self.cambiarImagen(imagenDisparo)}
			else {self.cambiarImagen(imagenDisparoIzquierda)}
			self.estaDisparando(true)
			const lineaDeTiro = orientacion.lineaDeTiro(self.position())
			lineaDeTiro.forEach({posicion => self.dispararLaserEn(posicion)})
			if ( self.orientacion() === derecha) {game.schedule(1000, {self.cambiarImagen(imagenDerecha)})}
			else {game.schedule(1000, {self.cambiarImagen(imagenIzquierda)})}  //Una vez que pasa un segundo, vuelvo a la imagen de siempre y
			game.schedule(1000, {estaDisparando = false})      		           //habilito el movimiento de nuevo
			game.sound(self.sonidoPoder()).play()
		}

	}
	
	method dispararLaserEn(posicion)
	{
			const laser = new Laser(position = posicion, image = self.poder(), sonido = self.sonidoPoder())
			game.addVisual(laser)
			game.onCollideDo(laser, {elemento => elemento.efectoLaser()}) //En vez de que los objetos colisionen con el laser, los laseres 
			game.schedule(1000, {game.removeVisual(laser)})				  //colisionan con los objetos y le mandan al objeto el mensaje polimorfico .efectoLaser()
	}
	
	method dejarBomba()
	{
		if(not muerto)
		{
		if(cantidadDeBombas > 0) {
		const bomba = new Bomba(position = self.position())
		game.addVisual(bomba)
		game.schedule(1750, {bomba.esconder()})
		game.schedule(2000, {game.onCollideDo(bomba, {elemento => bomba.explotar()})})	
		game.schedule(2000, {game.onCollideDo(bomba, {elemento => elemento.efectoLaser()})})
		cantidadDeBombas -= 1
		}
		}
	}
	
	 method saltar()
	{	if ((game.getObjectsIn(position.down(1)).size()) != 0){
		estaCayendo = false } 
		if(!estaCayendo)
		{
			estaSaltando = true
			estaCayendo = true
			if (estaSaltando) {
			self.moverseA(arriba)
			game.onTick(50, "saltar" , {self.moverseA(arriba)})
			game.schedule(450, {estaSaltando = false})
			game.schedule(500, {game.removeTickEvent("saltar")})
		}
	}
	}
	method gravedad()
	{
		if ((!estaSaltando))
		{
			self.moverseA(abajo)
		}
	}
	method posicionMuerte()
    {
        if(self.position().y() < 0) muerto = true 
    }
}

class ImagenDeVictoria{
	const property position = game.at(0,0)
	const property jugador
	method image() = jugador.imagenDeVictoria()
	method efectoLaser(){}
	method restringeMovimiento(){}
}

