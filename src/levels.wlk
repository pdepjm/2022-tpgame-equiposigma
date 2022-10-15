import level.*
import jugadorClase.*
import direcciones.*
import wollok.game.*

object primerNivel inherits Level {
	
	/* override method nuevoSpawnPersonajes(){
		spawnPersonaje1 = [game.at(5,5)]
	} */ 
	const jugador = new Jugador(	position = game.at(3,2),
									orientacion = derecha,
									imagen = "goku.png",
									imagenDerecha = "goku.png",
									imagenIzquierda = "gokuizq.png",
									imagenDisparo = "gokukame.png",
									imagenDisparoIzquierda = "gokukameizq.png",
									poder = "kamehameha.png")
	
	const jugador2 = new Jugador(   position = game.at(16,2),
									orientacion = izquierda,
									imagen = "supermanizq.png",
									imagenDerecha = "superman.png",
									imagenIzquierda = "supermanizq.png",
									imagenDisparo = "supermanlaser.png",
									imagenDisparoIzquierda = "supermanlaserizq.png",
									poder = "visionCalorica.png")
	
	method anadirPersonajesYControles()
	{
		game.addVisual(jugador)
		game.addVisual(jugador2)

		game.onTick(50, "caer", {jugador.gravedad()})
		game.onTick(50, "caer", {jugador2.gravedad()})
		keyboard.a().onPressDo{jugador.moverseA(izquierda)}
		keyboard.d().onPressDo{jugador.moverseA(derecha)}
		keyboard.w().onPressDo{jugador.saltar()}
		keyboard.e().onPressDo{jugador.disparar()}
		keyboard.s().onPressDo{jugador.dejarBomba()}

		keyboard.i().onPressDo{jugador2.saltar()}
		keyboard.l().onPressDo{jugador2.moverseA(derecha)}
		keyboard.j().onPressDo{jugador2.moverseA(izquierda)}
		keyboard.p().onPressDo{jugador2.disparar()}	
	}
	override method nombreNivel() = "nivelUno"
	
	override method renderizar(){
		// soportes 
		const soporte1 = [1,[1,2,3,4,5,6,7,8,9,10,11,12]]
		const soporte2 = [1,[14,15,16,17,18,19]]
		const soporte3 = [4,[2,3,4,5,6,7]]
		const soporte4 = [7,[8,9,10,11,12]]
		
		const soportes = [soporte1,soporte2,soporte3,soporte4]
		self.anadirPersonajesYControles()
		game.boardGround("fondo.png")
		render.render(soportes,piso)
		
	}

}
