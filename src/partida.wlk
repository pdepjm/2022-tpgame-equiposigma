import wollok.game.*
import enfrentamiento.*
import direcciones.*
import levels.*



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
		
		const enfrentamiento = new Enfrentamiento(personaje1= personaje1, personaje2 = personaje2, nivel = nivel)
		enfrentamiento.jugar()
		 
		 //Actualizo si se termino el enfrentamiento
		 game.onTick(100, "actualizo si se termino el enfrentamiento", {terminoPrimerEnfrentamiento = enfrentamiento.flagTerminarEnfrentamiento()})
		 
		 //Si el primer enfrentamiento se terminó, paso al segundo nivel
		 game.onTick(110, "pasar 2do nivel", {if(terminoPrimerEnfrentamiento){self.cuantificarVictoria(enfrentamiento); self.jugarSegundoNivel()/*game.removeTickEvent("pasar 2do nivel")*/}})
	}
	
	method jugarSegundoNivel()
	{
		game.removeTickEvent("pasar 2do nivel")
		game.clear()
		self.mostrarVictorias()
		personaje1.muerto(false)
		personaje2.muerto(false)
		const enfrentamiento2 = new Enfrentamiento(personaje1= personaje1, personaje2 = personaje2, nivel = nivel2)
		enfrentamiento2.jugar()
		
		game.onTick(100, "actualizo finalizacion 2do enfrentamiento", {terminoSegundoEnfrentamiento = enfrentamiento2.flagTerminarEnfrentamiento()})
		
		game.onTick(110, "pasar 3er nivel", {if(terminoSegundoEnfrentamiento)
			{self.cuantificarVictoria(enfrentamiento2)
			self.jugarTercerNivel()}}) 
		
	}
	
	method jugarTercerNivel()
	{
		game.removeTickEvent("pasar 3er nivel")

		game.clear()
		self.mostrarVictorias()
		personaje1.muerto(false)
		personaje2.muerto(false)
		const enfrentamiento3 = new Enfrentamiento(personaje1 = personaje1, personaje2 = personaje2, nivel = nivel3)
		enfrentamiento3.jugar()
		
		/*var texto = new TextoVictoria(ganador = terminoTercerEnfrentamiento)
		game.onTick(50, "p", texto.ganador(terminoTercerEnfrentamiento))
		game.addVisual(texto)*/
		
		
		game.onTick(100, "actualizo finalizacion 3er enfrentamiento", {terminoTercerEnfrentamiento = enfrentamiento3.flagTerminarEnfrentamiento()})
		game.onTick(110, "terminar 3er nivel", {if(terminoTercerEnfrentamiento){self.mostrarGanador()/*self.cuantificarVictoria(enfrentamiento3); self.mostrarGanador(); game.removeTickEvent("pasar 3er nivel")*/}})
	}
	
	method mostrarGanador()
	{
		if(victoriasPersonaje1 > victoriasPersonaje2)
		{
			const texto = new TextoVictoria(ganador = personaje1)
			game.addVisual(texto)
		}
		else 
		{
			const texto = new TextoVictoria(ganador = personaje2)
			game.addVisual(texto)
		}
		
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
