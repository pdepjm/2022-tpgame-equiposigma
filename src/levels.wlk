import level.*
import wollok.game.*
import elementos.*


object primerNivel inherits Level {
	
	const property spawnJ1 = game.at(4,4)
	const property spawnJ2 = game.at(17,8)
	
	override method renderizar(){
		
		const soporte1 = new Soporte(columna=[1,2,3,4,5,6,7,8,9,10,11,12],fila=[1],tipo="ladrillo")
		const soporte2 = new Soporte(fila=[1], columna=[14,15,16,17,18,19],tipo="ladrillo")
		const soporte3 = new Soporte(fila=[4],columna=[2,3,4,5,6,7],tipo="ladrillo")
		const soporte4 = new Soporte(fila=[7],columna=[8,9,10,11,12],tipo="ladrillo")
		const soporte5 = new Soporte(fila=[5,6,7,8,9,10],columna=[12],tipo="ladrillo")
		const soporte6 = new Soporte(fila=[6],columna=[17,18,19,20,21],tipo="ladrillo")
		
		const soporte= [soporte1,soporte2,soporte3,soporte4,soporte5,soporte6]
		
		game.addVisual(fondo1)
		render.renderizarSoportes(soporte)
		
	}

}

object segundoNivel inherits Level{
	
	const property spawnJ1 = game.at(3,8)
	const property spawnJ2 = game.at(16,3)
	
	override method renderizar(){
		game.addVisual(fondo2)
		
		const soporte1 = new Soporte(columna=[0,1,2,3,4,5,6,7,8,9,10,11,12,15,16,17,18,19,20],fila=[0],tipo="pasto")
		const soporte2 = new Soporte(fila=[1], columna=[0,1,2,3,4,5,15,16,17,18,19,20],tipo="pasto")
		const soporte3 = new Soporte(fila=[2],columna=[18,19,20],tipo="pasto")
		const soporte4 = new Soporte(fila=[4],columna=[8,9,10,11,12],tipo="pasto")
		const soporte5 = new Soporte(fila=[6],columna=[2,3,4],tipo="pasto")
		const soporte6 = new Soporte(fila=[6],columna=[17,18,19,20,21],tipo="pasto")
		const soporte7 = new Soporte(fila=[10],columna=[6,7,8,9,10],tipo="pasto")
		
		const soporte= [soporte1,soporte2,soporte3,soporte4,soporte5,soporte6,soporte7]
		render.renderizarSoportes(soporte)
	}
}



object tercerNivel inherits Level{
	
	const property spawnJ1 = game.at(3,4)
	const property spawnJ2 = game.at(14,6)
	
	override method renderizar(){
		game.addVisual(fondo3)
		const soporte1 = new Soporte(columna=[0,1,2,3,4,5],fila=[0],tipo="concreteBlock")
		const soporte2 = new Soporte(columna=[0,3,5],fila=[1],tipo="concreteBlock")
		const soporte8 = new Soporte(columna=[0,1,2,3,4,5],fila=[2],tipo="concreteBlock")
		const soporte10 = new Soporte(columna=[10,11,12,13],fila=[1],tipo="concreteBlock")
		const soporte9 = new Soporte(columna=[1,2,4],fila=[1],tipo="window")
		const soporte3 = new Soporte(fila=[0],columna=[11,12],tipo="window")
		const soporte4 = new Soporte(fila=[0],columna=[10,13],tipo="concreteBlock")
		const soporte5 = new Soporte(fila=[5],columna=[6,7,8],tipo="concreteBlock2")
		const soporte6 = new Soporte(fila=[7],columna=[0,1,2],tipo="concreteBlock2")
		const soporte7 = new Soporte(fila=[9],columna=[10,11,12,13,14],tipo="concreteBlock2")
		const soporte11 = new Soporte(columna=[16],fila=[0,1,2,3,4,5,6],tipo="concreteBlock")
		const soporte12 = new Soporte(columna=[17],fila=[0,2,4,6],tipo="concreteBlock")
		const soporte13 = new Soporte(columna=[18],fila=[0,2,4,6],tipo="concreteBlock")
		const soporte16 = new Soporte(columna = [17],fila= [1,3,5],tipo="window")
		const soporte15 = new Soporte(columna = [18],fila= [1,3,5],tipo="window")
		const soporte14 = new Soporte(columna=[19],fila=[0,1,2,3,4,5,6],tipo="concreteBlock")
		const soporte17 = new Soporte(columna=[14,15],fila=[4],tipo="concreteBlock2")
		
		const soporte= [soporte1,soporte3,soporte4,soporte5,soporte6,soporte7,soporte2,soporte8,soporte9,soporte10,soporte11,soporte12,soporte13,soporte14,soporte15,soporte16,soporte17]
		render.renderizarSoportes(soporte)
		
	}
}


object fondo1{
	var property position = game.at(0,0)
	method image() = "nubesdia.png"
}
object fondo2{
	var property position = game.at(0,0)
	method image() = "nubesnoche.png"
}
object fondo3{
	var property position = game.at(0,0)
	method image() = "nivelTres.jpg"
}

