import elementos.*
import wollok.game.*

class Level {
	
	var property piso = []
	// var property spawnPersonaje1 = []
	
	method nombreNivel() = ""
	// method nuevoSpawnPersonajes()
	method renderizar()
	
	method cargarNivel(jugador){
		// [fila,[Columnas]]
		// self.nuevoSpawnPersonajes()
		// self.cargarFondo("./assets/map/" + self.nombreNivel() + ".png")
		// jugador.position(spawnPersonaje1)
		self.renderizar()
		
	}
	
	/* method cargarFondo(imagen){
		if(!game.hasVisual(imagen)){
			game.addVisual(imagen)
		}
	} */ 	
}

object render{
	method render(listaSoportes,piso){
		listaSoportes.forEach( { soporte => 
			const fila = soporte.get(0)
			const columna = soporte.get(1)
			columna.forEach({n => piso.add( new Ladrillo(position = game.at(n,fila)))})
		} )
		piso.forEach({n => game.addVisual(n)})
		// range.forEach({m => typeTile.add( new DestroyableTile(position = game.at(nPosition , m)))})
	} 
}
