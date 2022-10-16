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
	method render(listaSoportes){
		listaSoportes.forEach( { soporte => 
			soporte.render()
		})
		// range.forEach({m => typeTile.add( new DestroyableTile(position = game.at(nPosition , m)))})
	} 
}
