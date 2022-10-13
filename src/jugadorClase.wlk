import wollok.game.*
import direcciones.*
import cajas.*
import laser.*

class Jugador {
	
	var property position //= game.at(3,2)
	
	var property estaSaltando = false
	var property estaDisparando = false
	var property estaCayendo = false
	var property cantidadDeBombas = 3
	var property orientacion 
	
	var property imagen 
	
	const property imagenIzquierda 				//Necesito esta variable definida en la clase jugador, asi puedo modificar la imagen de la orientacion de una manera no-hardcodeada
												// y modificarlas desde los objetos direccion. Ademas, puedo instanciar jugadores y cambiarles las imagenes
	const property imagenDerecha 
	
	const property imagenDisparo 
	
	const property imagenDisparoIzquierda 
	
	const property poder
	
	method image() = orientacion.imagen(self)
	
	method cambiarImagen(nuevaImagen) {imagen = nuevaImagen}
	
	method restringeMovimiento() {return false}
	
	method efectoLaser()
	{
		game.removeVisual(self)	//Muere si el laser colisiona con el jugador
		game.schedule(6000, {game.stop()})
	}
	
	
	method moverseA(direccion)
	{
		const objetosCercanos = game.getObjectsIn(direccion.posicionSiguiente(position)) //Obtengo los objetos en la posicion hacia la que quiero mover a mi jugador
		
		const puedeAvanzar = !objetosCercanos.any({objetoCercano => objetoCercano.restringeMovimiento()}) //Si algun objeto restringe el movimiento (por ej, las cajas), el jugador no puede avanzar
		
		if (puedeAvanzar && !self.estaDisparando()) //El jugador no puede moverse si hay un objeto o si esta disparando
		{
			position = direccion.posicionSiguiente(position) 
			orientacion = direccion
			
		}	
	}
	
	
	method disparar()
	{
		if ( self.orientacion() === derecha ) {self.cambiarImagen(imagenDisparo)}
		else {self.cambiarImagen(imagenDisparoIzquierda)}
		self.estaDisparando(true)
		
		const lineaDeTiro = orientacion.lineaDeTiro(self.position())
		lineaDeTiro.forEach({posicion => self.dispararLaserEn(posicion)})
		
		if ( self.orientacion() === derecha) {game.schedule(1000, {self.cambiarImagen(imagenDerecha)})}
		else {game.schedule(1000, {self.cambiarImagen(imagenIzquierda)})}  //Una vez que pasa un segundo, vuelvo a la imagen de siempre y
		game.schedule(1000, {estaDisparando = false})      		           //habilito el movimiento de nuevo
	}
	
	method dispararLaserEn(posicion)
	{
			const laser = new Laser(position = posicion, image = self.poder())
			game.addVisual(laser)
			game.onCollideDo(laser, {elemento => elemento.efectoLaser()}) //En vez de que los objetos colisionen con el laser, los laseres 
			game.schedule(1000, {game.removeVisual(laser)})				  //colisionan con los objetos y le mandan al objeto el mensaje polimorfico .efectoLaser()
	}
	
	method dejarBomba()
	{
		if(cantidadDeBombas > 0) {
		const bomba = new Bomba(position = self.position())
		game.addVisual(bomba)
		game.schedule(2000, {game.onCollideDo(bomba, {elemento => bomba.explotar();elemento.efectoLaser()})})	
		cantidadDeBombas -= 1
		}
	}
	
	 method saltar()
	{	if ((game.getObjectsIn(position.down(1)).size()) != 0){
		estaCayendo = false } 
		if(!estaCayendo)
		{
			estaCayendo = true
			
			
			estaSaltando = true
			
				
				
				
			self.moverseA(arriba)
			game.onTick(50, "saltar" , {self.moverseA(arriba)})
			game.schedule(450, {estaSaltando = false})
			game.schedule(500, {game.removeTickEvent("saltar")})
	}
	}
	method gravedad()
	{
		if ((!estaSaltando))
		{
			self.moverseA(abajo)
		}
	}
}



