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
	
	
	method jugarPrimerNivel(){
		
		const enfrentamiento = new Enfrentamiento(personaje1= personaje1, personaje2 = personaje2, nivel = nivel)
		enfrentamiento.jugar()
		 
		 //Actualizo si se termino el enfrentamiento
		 game.onTick(100, "actualizo si se termino el enfrentamiento", {terminoPrimerEnfrentamiento = enfrentamiento.flagTerminarEnfrentamiento()})
		 
		 //Si el primer enfrentamiento se terminó, paso al segundo nivel
		 game.onTick(110, "pasar 2do nivel", {if(terminoPrimerEnfrentamiento){self.jugarSegundoNivel(); game.removeTickEvent("pasar 2do nivel")}})
	}
	
	method jugarSegundoNivel()
	{
		game.clear()
		personaje1.muerto(false)
		personaje2.muerto(false)
		const enfrentamiento2 = new Enfrentamiento(personaje1= personaje1, personaje2 = personaje2, nivel = nivel2)
		enfrentamiento2.jugar()
		
		game.onTick(100, "actualizo finalizacion 2do enfrentamiento", {terminoSegundoEnfrentamiento = enfrentamiento2.flagTerminarEnfrentamiento()})
		
		game.onTick(110, "pasar 3er nivel", {if(terminoSegundoEnfrentamiento){self.jugarTercerNivel(); game.removeTickEvent("pasar 3er nivel")}} /*game.removeTickEvent("pasar 3er nivel")}*/)
		
	}
	
	method jugarTercerNivel()
	{
		personaje1.muerto(false)
		personaje2.muerto(false)
		game.clear()
		const enfrentamiento3 = new Enfrentamiento(personaje1 = personaje1, personaje2 = personaje2, nivel = nivel3)
		enfrentamiento3.jugar()
		
		game.onTick(100, "actualizo finalizacion 3er enfrentamiento", {terminoTercerEnfrentamiento = enfrentamiento3.flagTerminarEnfrentamiento()})
		game.onTick(110, "pasar 3er nivel", {if(terminoTercerEnfrentamiento){game.removeTickEvent("pasar 3er nivel")}})
	}
}
	
