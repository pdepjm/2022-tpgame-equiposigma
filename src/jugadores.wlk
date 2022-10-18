import jugadorClase.*
import wollok.game.*
import direcciones.*

	const jugador = new Jugador(	position = game.at(3,2),
									orientacion = derecha,
									imagen = "goku.png",
									imagenDerecha = "goku.png",
									imagenIzquierda = "gokuizq.png",
									imagenDisparo = "gokukame.png",
									imagenDisparoIzquierda = "gokukameizq.png",
									poder = "kamehameha.png", 
									sonidoPoder = "kamehameha.mp3")
	
	const jugador2 = new Jugador(   position = game.at(16,2),
									orientacion = izquierda,
									imagen = "supermanizq.png",
									imagenDerecha = "superman.png",
									imagenIzquierda = "supermanizq.png",
									imagenDisparo = "supermanlaser.png",
									imagenDisparoIzquierda = "supermanlaserizq.png",
									poder = "visionCalorica.png",
									sonidoPoder = "rayosX.mp3")
									
/*	const jugador3 = new Jugador(   position = game.at(16,2),
									orientacion = izquierda,
									imagen = "zenitsu.png",
									imagenDerecha = "zenitsu.png",
									imagenIzquierda = "zenitsu.png",
									imagenDisparo = "vacio.png",
									imagenDisparoIzquierda = "vacio.png",
									poder = "rayozenitsu.png") */
		
