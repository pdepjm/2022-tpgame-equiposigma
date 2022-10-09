import wollok.game.*

object menu{
	
	var property pos=0 //la posiucion de lo que queiro elegir dentro de la lista
	const opciones=[play,controles,creditos]
	var property enPantalla  = null 
	
	method seleccionarOpcion() = opciones.get(pos)
	
	method setUp(){
		self.cargarControlesMenu()
		game.addVisual(titulo)
		opciones.forEach({option => game.addVisual(option)})
		game.boardGround("./assets/menu/menu-background.png")
		
		
	}
	
	method cargarControlesMenu()
	{
		keyboard.up().onPressDo( {self.irArriba()} )
		keyboard.down().onPressDo( {self.irAbajo()} )
		keyboard.space().onPressDo( {self.seleccionar()} )
		keyboard.q().onPressDo({ self.atras() })
		
	}
	method irArriba()
	{
		self.seleccionarOpcion().isSelected(false) 
		pos = (((pos + 1) % opciones.size()) + opciones.size()) % opciones.size()
		self.seleccionarOpcion().isSelected(true) 
	}
	method irAbajo()
	{
	    self.seleccionarOpcion().isSelected(false) 
		pos = (((pos - 1) % opciones.size()) + opciones.size()) % opciones.size()
		self.seleccionarOpcion().isSelected(true)	
	}
	method seleccionar()//va a usar la opcion enter que es polimorfica entre los botones para jecutarlos
	{
	  	 if(enPantalla == null)
	  	  enPantalla = self.seleccionarOpcion()//toma el objheto que esta en pantalla
	  	  self.seleccionarOpcion().enter()
	}
	method atras() 
	{
		if(enPantalla!= null)
		enPantalla.volver()
		enPantalla = null
	}
}

class Boton{
	
	const property name
    const property position
    const imgSelected
    const imgUnselected
    var property isSelected
    
    method imagen ()=if(isSelected) imgSelected else imgUnselected 
	
}

object play{}

object controles{}

object creditos{}

object titulo{}
