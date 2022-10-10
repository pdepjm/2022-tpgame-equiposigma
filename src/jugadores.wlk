import wollok.game.*
import cajas.*

//--IGNORAR COMPLETAMENTE ESTE ARCHIVO
//Esta re feo
//El posta es jugadorClase

/*class jugador {
	
	var id 
	var skin
	var teclasUtilizadas
	var property posicion = game.origin()
	
	
	method mover(direccion){
		posicion = direccion.siguientePosicion(posicion)
	}
	
}*/
class Laser {
    var property position 
    method image() = "laser.png"
    //method agrandate() {
    //}
}
object Jugador {
	var property position = game.center()
	var property estaSaltando = false
	var direccion = 0
	var imagen = "goku.png"
	var estaCayendo = false
	var estaDisparando = false 
	var ultimaDireccion = imagen
	method image() = imagen
 	/*method subir()
	{
		if ( (game.getObjectsIn(position.up(1))).size() == 0)
		(
			position = position.up(1)	
		)	
	}
	method bajar()
	{
		if ( (game.getObjectsIn(position.down(1))).size()==0 )
		(
			position = position.down(1)	
		)
		
	}
	method derecha()
	{
		if ( (game.getObjectsIn(position.right(1)).size()) == 0 && !estaDisparando)
		{
			position = position.right(1)
			imagen = "goku.png"
			direccion = 0
		}
	}
	method izquierda()
	{
		if((game.getObjectsIn(position.left(1)).size()) == 0 && !estaDisparando)
		{
			position = position.left(1)
			imagen = "gokuizq.png"
			direccion = 1
		}
	}
 	method saltar()
	{	if ((game.getObjectsIn(position.down(1)).size()) != 0){
		estaCayendo = false } 
		if(!estaCayendo && !estaDisparando)
		{
			estaSaltando = true
			estaCayendo = true
			if (estaSaltando) {
			self.subir()
			game.onTick(50, "saltar" , {self.subir()})
			game.schedule(450, {estaSaltando = false})
			game.schedule(500, {game.removeTickEvent("saltar")})
		}
	}
	}
	method gravedad()
	{
		if ( ((game.getObjectsIn(position.down(1)).size()) == 0) && (! estaSaltando))
		{
			self.bajar()
		}
	}*/
	    method disparar()
    {	
    	estaDisparando = true
    	ultimaDireccion = imagen
    	if (direccion == 0) {
    		imagen = "gokukame.png"
    		const laser = new Laser(position = self.position().right(2))
    		game.addVisual(laser)
    		const laser2 = new Laser(position = laser.position().right(4))
    		const laser3 = new Laser(position = laser2.position().right(4))
    	} else { 
    		imagen = "gokukameizq.png"
    		const laser = new Laser(position = self.position().left(6))
    		game.addVisual(laser)
    		const laser2 = new Laser(position = laser.position().left(4))
    		const laser3 = new Laser(position = laser2.position().left(4))
    	}

    	game.schedule(250, {game.addVisual(laser2)})
    	game.schedule(500, {game.addVisual(laser3)})
        game.schedule(1500, {game.removeVisual(laser)})
        game.schedule(1750, {game.removeVisual(laser2)})
        game.schedule(2000, {game.removeVisual(laser3)})
        game.schedule(1000, {imagen = ultimaDireccion})
        game.schedule(1500, {estaDisparando = false})
        //game.onTick(200,"avanzar", {self.agrandate()} )

		} 
}