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
		
		game.boardGround("aot2.png")
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

object tercerNivel inherits Level{
	override method nombreNivel() = "nivelTres"
	
	override method renderizar(){
		game.boardGround("nivelTres.jpg")
		
		const soporte1 = new SoporteConcreto1(columna=[0,1,2,3,4,5],fila=[0])
		const soporte2 = new SoporteConcreto1(columna=[0,3,5],fila=[1])
		const soporte8 = new SoporteConcreto1(columna=[0,1,2,3,4,5],fila=[2])
		const soporte10 = new SoporteConcreto1(columna=[10,11,12,13],fila=[1])
		const soporte9 = new SoporteVentana(columna=[1,2,4],fila=[1])
		const soporte3 = new SoporteVentana(fila=[0],columna=[11,12])
		const soporte4 = new SoporteConcreto1(fila=[0],columna=[10,13])
		const soporte5 = new SoporteConcreto2(fila=[5],columna=[6,7,8])
		const soporte6 = new SoporteConcreto2(fila=[7],columna=[0,1,2])
		const soporte7 = new SoporteConcreto2(fila=[9],columna=[10,11,12,13,14])
		const soporte11 = new SoporteConcreto1(columna=[16],fila=[0,1,2,3,4,5,6])
		const soporte12 = new SoporteConcreto1(columna=[17],fila=[0,2,4,6])
		const soporte13 = new SoporteConcreto1(columna=[18],fila=[0,2,4,6])
		const soporte16 = new SoporteVentana(columna = [17],fila= [1,3,5])
		const soporte15 = new SoporteVentana(columna = [18],fila= [1,3,5])
		const soporte14 = new SoporteConcreto1(columna=[19],fila=[0,1,2,3,4,5,6])
		const soporte17 = new SoporteConcreto2(columna=[14,15],fila=[4])
		
		const soporte= [soporte1,soporte3,soporte4,soporte5,soporte6,soporte7,soporte2,soporte8,soporte9,soporte10,soporte11,soporte12,soporte13,soporte14,soporte15,soporte16,soporte17]
		render.renderizar(soporte)
		
	}
}
