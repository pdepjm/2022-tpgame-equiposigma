import wollok.game.*
import enfrentamiento.*
import direcciones.*
import levels.*



class Partida{
	
	const personaje1
	const personaje2
	
	var ganador = null
	
	method jugar(){
		
	}
	


	
}





/*class Partida{
	
	const personaje1
	const personaje2
	
	var victoriasJugador1 = 0
	var victoriasJugador2 = 0
	var flagPasarDeEnfrentamiento = false
	 
	method jugar()
	{
		self.primerEnfrentamiento()
		game.title("juegoSigma")
		game.width(20)
		game.height(15)
		game.cellSize(50)
		game.start()
		game.onTick(10, "chequear si hay que pasar de enfrentamiento", {self.mostrarResultados()})
	} 
	
	method primerEnfrentamiento()
	{
		flagPasarDeEnfrentamiento = false
		const enfrentamiento = new Enfrentamiento(personaje1 = personaje1, personaje2 = personaje2, nivel = primerNivel)
		enfrentamiento.jugar()
		game.onTick(100, "me fijo si alguien gano", {self.cuantificarEnfrentamiento(enfrentamiento)})
	}
	
	method cuantificarEnfrentamiento(enfrentamiento)
	{
		if (enfrentamiento.ganador()===(personaje1)) {victoriasJugador1++; flagPasarDeEnfrentamiento = true; game.removeTickEvent("me fijo si alguien gano")}
		if (enfrentamiento.ganador()===(personaje2)) {victoriasJugador2++; flagPasarDeEnfrentamiento = true; game.removeTickEvent("me fijo si alguien gano")}
	}
	
	method mostrarResultados()
	{
		if(flagPasarDeEnfrentamiento)
		{
			if (victoriasJugador1 > victoriasJugador2)
			{
				const baner = new BannerVictoria(ganador = "personaje 1")
				game.addVisual(baner)
			}
			else
			{
				const baner = new BannerVictoria(ganador = "personaje 2")
				game.addVisual(baner)			
			}
			game.schedule(500, {self.segundoEnfrentamiento()})
			game.schedule(500, flagPasarDeEnfrentamiento = false)
		}
	}
	method segundoEnfrentamiento()
	{
		game.clear()
		const enfrentamiento = new Enfrentamiento(personaje1 = personaje1, personaje2 = personaje2, nivel = tercerNivel)
		enfrentamiento.jugar()
		//game.addVisual(ganadorEnfrentamiento)
		if (enfrentamiento.ganador()===(personaje1)) {victoriasJugador1++; flagPasarDeEnfrentamiento = true}
		if (enfrentamiento.ganador()===(personaje2)) {victoriasJugador2++; flagPasarDeEnfrentamiento = true}
	}
	
}


class BannerVictoria{
	const ganador
	var property position = game.center()
	method text() = "gano el " + ganador
}*/