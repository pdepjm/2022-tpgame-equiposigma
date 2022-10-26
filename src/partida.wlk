import wollok.game.*
import enfrentamiento.*
import direcciones.*
import levels.*
import menuValen.*


class Partida{
	
	const personaje1
	const personaje2
	
	var victoriasPersonaje1 = 0
	var victoriasPersonaje2 = 0
	
	var ganador = null
	
	const nivel = primerNivel
	const nivel2= segundoNivel
	const nivel3 = tercerNivel
	
	var terminoPrimerEnfrentamiento = false
	var terminoSegundoEnfrentamiento = false
	var terminoTercerEnfrentamiento = false
	
	
	method cuantificarVictoria(enfrentamiento)
	{
		if (enfrentamiento.ganador() === personaje1) {victoriasPersonaje1++}
		if (enfrentamiento.ganador() === personaje2) {victoriasPersonaje2++}
	}
	
	method jugarPrimerNivel(){
		
		game.clear()
		const enfrentamiento = new Enfrentamiento(personaje1= personaje1, personaje2 = personaje2, nivel = nivel)
		enfrentamiento.jugar()
		 
		 //Actualizo si se termino el enfrentamiento
		 game.onTick(100, "actualizo si se termino el enfrentamiento", {terminoPrimerEnfrentamiento = enfrentamiento.flagTerminarEnfrentamiento()})
		 
		 //Si el primer enfrentamiento se terminó, paso al segundo nivel
		 game.onTick(110, "pasar 2do nivel", 
		 	{if(terminoPrimerEnfrentamiento)
		 		{
		 		const pantalla = new PantallaCarga(texto = enfrentamiento.ganador().nombre() + " ganó!")
		 		game.addVisual(pantalla)
		 		self.cuantificarVictoria(enfrentamiento)
		 		self.jugarSegundoNivel()
		 		}
		 	}
		 )
	}
	
	method jugarSegundoNivel()
	{
		game.removeTickEvent("pasar 2do nivel")

		personaje1.muerto(false)
		personaje2.muerto(false)
		const enfrentamiento2 = new Enfrentamiento(personaje1= personaje1, personaje2 = personaje2, nivel = nivel2)
					
		game.schedule(2000, 
			{
			game.clear();
			enfrentamiento2.jugar();
			game.onTick(100, "actualizo finalizacion 2do enfrentamiento", {terminoSegundoEnfrentamiento = enfrentamiento2.flagTerminarEnfrentamiento()});
			game.onTick(110, "pasar 3er nivel", 
				{if(terminoSegundoEnfrentamiento)
					{self.cuantificarVictoria(enfrentamiento2)
					 const pantalla = new PantallaCarga(texto = enfrentamiento2.ganador().nombre() + " ganó!")
					 game.addVisual(pantalla)
					 self.determinarTerceraEtapa()}}) 			 	
			}
		)
	}
	
	method determinarTerceraEtapa()
	{
		if (victoriasPersonaje1 == victoriasPersonaje2) //si hay un empate, juego un tercer nivel
		{
			self.jugarTercerNivel()	
		}
		else
		{
			self.determinarGanador()
			const texto = new PantallaFinal(ganador = ganador)
			game.addVisual(texto)	
			texto.controles()
		}
	}
	
	
	method jugarTercerNivel()
	{
		game.removeTickEvent("pasar 3er nivel")
		personaje1.muerto(false)
		personaje2.muerto(false)
		const enfrentamiento3 = new Enfrentamiento(personaje1 = personaje1, personaje2 = personaje2, nivel = nivel3)
		
		game.schedule(2000, 
			{
			game.clear()
			enfrentamiento3.jugar()
			game.onTick(100, "actualizo finalizacion 3er enfrentamiento", {terminoTercerEnfrentamiento = enfrentamiento3.flagTerminarEnfrentamiento()})
			game.onTick(110, "terminar 3er nivel", 
				{if(terminoTercerEnfrentamiento)
				{
					self.cuantificarVictoria(enfrentamiento3)
					self.mostrarGanador()
				}
				})
			})
	}
	
	
	method mostrarGanador()
	{
		if(victoriasPersonaje1 > victoriasPersonaje2)
		{
			const texto = new PantallaFinal(ganador = personaje1)
			game.addVisual(texto)
		}
		if (victoriasPersonaje2 > victoriasPersonaje1) 
		{
			const texto = new PantallaFinal(ganador = personaje2)
			game.addVisual(texto)
		}	
	}
	
	method determinarGanador()
	{
		if (victoriasPersonaje1 > victoriasPersonaje2) {ganador = personaje1}
		else {ganador = personaje2}
	}
	method mostrarVictorias(){
		const victorias1 = new Victorias ( victorias = victoriasPersonaje1, position = game.at(10,10))
		const victorias2 = new Victorias ( victorias = victoriasPersonaje2, position = game.at(8,10))
		
		game.addVisual(victorias1)
		game.addVisual(victorias2)
	}
}
	
	
class TextoVictoria{
	const ganador
	var property position = game.center()
	method text() = ganador.nombre() + " wins!"
	
}

class Victorias{
	var victorias
	var property position
	method text() = victorias.toString()
}


class PantallaCarga{
	const texto
	const property position = game.center()
	method text() = texto
	method textColor() = "FFFFFF"
}

class PantallaFinal{
	const ganador
	const property position = game.center()
	method text() = ganador.nombre() + " ganó!"
	
	method controles()
	{
		keyboard.r().onPressDo({menu.ejecutarMenu()})
		keyboard.c().onPressDo({game.stop()})
	}
}
