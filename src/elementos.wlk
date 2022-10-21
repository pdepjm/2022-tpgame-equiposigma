import wollok.game.*

// Materiales

class Caja{
	var property position
	method image() = ""
	method restringeMovimiento() {return true}
	method efectoLaser() {}
}

class Ladrillo inherits Caja{
	override method image() = "ladrillo.png"
}

class Pasto inherits Caja{
	override method image() = "pasto.png"
}

class Concreto1 inherits Caja{
	override method image() = "concreteBlock.png"
}

class Concreto2 inherits Caja{
	override method image() = "concreteBlock2.png"
}

class Ventana inherits Caja{
	override method image() = "window.png"
}


// Soportes


class Soporte{
	const property columna = []
	const property fila = []
	const property elementos = []
	
	method crearClase(n,m)
	
	method render(){
		if(self.fila().size() == 1){
			self.columna().forEach({n => elementos.add(self.crearClase(n,fila.get(0)))})
		}else{
			self.fila().forEach({n => elementos.add(self.crearClase(columna.get(0),n))})
		}
		elementos.forEach({n => game.addVisual(n)})
	} 
}

class SoporteLadrillo inherits Soporte{
	
	override method crearClase(n,m){
		return (new Ladrillo(position = game.at(n,m)))
	}
}

class SoportePasto inherits Soporte{
	
	override method crearClase(n,m){
		return (new Pasto(position = game.at(n,m)))
	}
}

class SoporteConcreto1 inherits Soporte{
	
	override method crearClase(n,m){
		return (new Concreto1(position = game.at(n,m)))
	}
}

class SoporteConcreto2 inherits Soporte{
	
	override method crearClase(n,m){
		return (new Concreto2(position = game.at(n,m)))
	}
}  

class SoporteVentana inherits Soporte{
	
	override method crearClase(n,m){
		return (new Ventana(position = game.at(n,m)))
	}
}  






	
