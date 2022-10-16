import elementos.*
import wollok.game.*

class Level {
	
	// falta poner estos metodos: donde van a spawnear los pj, metodo para cargar fondo y un atributo q vaya cargando quien va ganando 
	
	// var property spawnPersonaje1 = []
	
	method nombreNivel() = ""
	// method nuevoSpawnPersonajes()
	method renderizar()
	
	method cargarNivel(jugador){
		// self.nuevoSpawnPersonajes()
		// self.cargarFondo("./assets/map/" + self.nombreNivel() + ".png")
		// jugador.position(spawnPersonaje1)
		self.renderizar()
		
	}
	 	
}

object render{
	method renderizar(listaSoportes){
		listaSoportes.forEach( { soporte => 
			soporte.render()
		})
	} 
}
