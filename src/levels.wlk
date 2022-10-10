import level.*
import wollok.game.*


object primerNivel inherits Level {
	
	/* override method nuevoSpawnPersonajes(){
		spawnPersonaje1 = [game.at(5,5)]
	} */ 
	
	override method nombreNivel() = "nivelUno"
	
	override method renderizar(){
		
		// soportes 
		const soporte1 = [1,[1,2,3,4,5,6,7,8,9,10,11,12]]
		const soporte2 = [1,[14,15,16,17,18,19]]
		const soporte3 = [4,[2,3,4,5,6,7]]
		const soporte4 = [7,[8,9,10,11,12]]
		
		const soportes = [soporte1,soporte2,soporte3,soporte4]
		
		render.render(soportes,piso)
	}

}
