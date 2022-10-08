import wollok.game.*

//Delego el buscar una posicion en una direccion en una clase

object izquierda {
	method posicionSiguiente(posicionActual) = posicionActual.left(1) 
}

object derecha {
	method posicionSiguiente(posicionActual) = posicionActual.right(1) 
}

object arriba {
	method posicionSiguiente(posicionActual) = posicionActual.up(1) 
}

object abajo {
	method posicionSiguiente(posicionActual) = posicionActual.down(1) 
}
