import wollok.game.*
import direcciones.*
import cajas.*
import laser.*

class Jugador {
	
	var property position = game.at(3,2)
	
	var property estaSaltando = false
	var property estaDisparando = false
	var property estaCayendo = false
	
	var property orientacion = izquierda
	
	var property imagen = "goku.png"
	const property imagenNatural = "goku.png"
	const property imagenIzquierda = "gokuizq.png" //Necesito esta variable definida en la clase jugador, asi puedo modificar la imagen de la orientacion de una manera no-hardcodeada
												// y modificarlas desde los objetos direccion. Ademas, puedo instanciar jugadores y cambiarles las imagenes
	const property imagenDerecha = "goku.png"
	
	const property imagenDisparo = "gokukame.png"
	
	method image() = imagen
	
	method cambiarImagen(nuevaImagen) {imagen = nuevaImagen}
	
	method restringeMovimiento() {return false}
	
	method efectoLaser()
	{
		game.removeVisual(self)	//Muere si el laser colisiona con el jugador
	}
	
	
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
		self.cambiarImagen(imagenDisparo)
		self.estaDisparando(true)
		const lineaDeTiro = orientacion.lineaDeTiro(self.position())
		lineaDeTiro.forEach({posicion => self.dispararLaserEn(posicion)})
		game.schedule(1000, {self.cambiarImagen(imagenNatural)}) //Una vez que pasa un segundo, vuelvo a la imagen de siempre y
		game.schedule(1000, {estaDisparando = false})      		//habilito el movimiento de nuevo
	}
	
	method dispararLaserEn(posicion)
	{
			const laser = new Laser(position = posicion)
			game.addVisual(laser)
			game.onCollideDo(laser, {elemento => elemento.efectoLaser()}) //En vez de que los objetos colisionen con el laser, los laseres 
			game.schedule(1000, {game.removeVisual(laser)})				  //colisionan con los objetos y le mandan al objeto el mensaje polimorfico .efectoLaser()
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
}



