import elementos.*
import wollok.game.*

class Level {
	
	method renderizar()
	 	
}

object render{
	method renderizarSoportes(listaSoportes){
		listaSoportes.forEach( { soporte => 
			soporte.preparar()
		})
	} 
}
