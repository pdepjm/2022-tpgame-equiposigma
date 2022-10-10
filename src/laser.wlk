import wollok.game.*
import jugadorClase.*
import cajas.*

//Pruebas, no esta terminado
class Laser {
	
	const property position = game.center()
	
	method image() = "laser.png"
	
	method restringeMovimiento() = false
	
}

class LineaDeTiro{
	method lineaDeTiro(position) //Recibe una posicion, devuelve toda la linea horizontal que la contiene
	{
		const linea = []
		const valoresDeX = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
		const valorDeY = position.y()
		valoresDeX.forEach{ x => linea.add(game.at(x, valorDeY))}
		return linea
	}
}


