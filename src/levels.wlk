import level.*
import wollok.game.*
import elementos.*


object primerNivel inherits Level {
	
	/* override method nuevoSpawnPersonajes(){
		spawnPersonaje1 = [game.at(5,5)]
	} */ 
	
	override method nombreNivel() = "nivelUno"
	
	override method renderizar(){
		
		// soportes 
		const soporte1 = new SoporteLadrillo(columna=[1,2,3,4,5,6,7,8,9,10,11,12],fila=[1])
		const soporte2 = new SoporteLadrillo(fila=[1], columna=[14,15,16,17,18,19])
		const soporte3 = new SoporteLadrillo(fila=[4],columna=[2,3,4,5,6,7])
		const soporte4 = new SoporteLadrillo(fila=[7],columna=[8,9,10,11,12])
		const soporte5 = new SoporteLadrillo(fila=[5,6,7,8,9,10],columna=[12])
		const soporte6 = new SoporteLadrillo(fila=[6],columna=[17,18,19,20,21])
		
		const soporte= [soporte1,soporte2,soporte3,soporte4,soporte5,soporte6]
		
		//game.boardGround("aot2.png")
		render.renderizar(soporte)
		
	}

}

object segundoNivel inherits Level{
	override method nombreNivel() = "nivelDos"
	
	override method renderizar(){
		game.boardGround("fondo.png")
		
		const soporte1 = new SoportePasto(columna=[0,1,2,3,4,5,6,7,8,9,10,11,12,15,16,17,18,19,20],fila=[0])
		const soporte2 = new SoportePasto(fila=[1], columna=[0,1,2,3,4,5,15,16,17,18,19,20])
		const soporte3 = new SoportePasto(fila=[2],columna=[18,19,20])
		const soporte4 = new SoportePasto(fila=[4],columna=[8,9,10,11,12])
		const soporte5 = new SoportePasto(fila=[6],columna=[2,3,4])
		const soporte6 = new SoportePasto(fila=[6],columna=[17,18,19,20,21])
		const soporte7 = new SoportePasto(fila=[10],columna=[6,7,8,9,10])
		
		const soporte= [soporte1,soporte2,soporte3,soporte4,soporte5,soporte6,soporte7]
		render.renderizar(soporte)
	}
}
