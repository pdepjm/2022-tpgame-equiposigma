import wollok.game.*

// Materiales

class Caja{
	var property position
	var property tipo
	method image() = tipo + ".png"
	method restringeMovimiento() {return true}
	method efectoLaser() {}
}

// Soportes

// el tipo puede ser: ladrillo,pasto,concreteBlock,concreteBlock2,window
class Soporte{
	const property columna = []
	const property fila = []
	const property elementos = []
	const property tipo
	
	method crearClase(n,m,tipoM){
		return (new Caja(position = game.at(n,m),tipo=tipoM))
	}
	
	method preparar(){
		if(self.fila().size() == 1){
			self.columna().forEach({n => elementos.add(self.crearClase(n,fila.get(0),tipo))})
		}else{
			self.fila().forEach({n => elementos.add(self.crearClase(columna.get(0),n,tipo))})
		}
		elementos.forEach({n => game.addVisual(n)})
	} 
}





	
