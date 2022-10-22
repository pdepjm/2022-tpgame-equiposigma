/*
import wollok.game.*
import jugadorClase.*
import personajes.*
import menu.*

object pantallaSeleccionPersonaje{
	
	var property contadorJugadorListo=0 // agregar method que controle si es ==2 entonces inicia el juego 
	
	const selector1= new selectorPersonaje(id=1,seleccionadoAhora=0) 
	const selector2= new selectorPersonaje(id=2,seleccionadoAhora=1)
	
	
	
	method incrementadorListo(){
		contadorJugadorListo++
		self.todosListos()
	} 
	
	
}

class selectorPersonaje{
	
	
	const id
	var seleccionadoAhora//pos de la lista en la que esta parado
	
	const listaJugadores=[jugador ,jugador2 ,jugador3]
	var property jugadorVisible = player.imagen()//guardo la imagen del jugador que estoy parado en el momento 
	var property player=listaJugadores.get(seleccionadoAhora)//toma el jugador de la pos de la lista
	var confirmo = false
	method instanciarJugador(){
		if(id==1){
			player.posInicial(id)
			 keyboard.a().onPressDo({self.previo()})
            keyboard.q().onPressDo({self.confirmar()})
            keyboard.d().onPressDo({self.siguiente()})
		}
		else if(id==2)
		{//seteo pos y los controles para elegir
			player.posInicial(id)
			 keyboard.left().onPressDo({self.previo()})
            keyboard.minusKey().onPressDo({self.confirmar()})
            keyboard.right().onPressDo({self.siguiente()})
		}
		game.addVisual(self)
	}
	method image()= jugadorVisible
	
	method previo(){
		seleccionadoAhora = (((seleccionadoAhora - 1) % listaJugadores.size()) + listaJugadores.size()) % listaJugadores.size()
	}
	
	method siguiente(){
		if(!confirmo) {
        	// Modulo hack to make the colour selection cyclic.
            seleccionadoAhora = (((seleccionadoAhora + 1) % listaJugadores.size()) + listaJugadores.size()) % listaJugadores.size()
		}
	}
	
	method confirmar(){
		
	}
		
}*/