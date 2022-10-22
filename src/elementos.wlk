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

	