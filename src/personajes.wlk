import jugadorClase.*
import wollok.game.*
import direcciones.*


const goku = new Jugador(	position = game.at(3,2),
									orientacion = derecha,
									imagen = "goku.png",
									imagenDerecha = "goku.png",
									imagenIzquierda = "gokuizq.png",
									imagenDisparo = "gokukame.png",
									imagenDisparoIzquierda = "gokukameizq.png",
									poder = "kamehameha.png", 
									sonidoPoder = "kamehameha.mp3",
									nombre = "Goku", 
									imagenDeVictoria = "gokuImagenVictoria.png", 
									imagenEscudo = "gokuEscudo.png", 
									imagenEscudoIzquierda = "gokuizqEscudo.png")
									
const goku2 = new Jugador(	position = game.at(3,2),
									orientacion = derecha,
									imagen = "goku.png",
									imagenDerecha = "goku.png",
									imagenIzquierda = "gokuizq.png",
									imagenDisparo = "gokukame.png",
									imagenDisparoIzquierda = "gokukameizq.png",
									poder = "kamehameha.png", 
									sonidoPoder = "kamehameha.mp3",
									nombre = "Goku", 
									imagenDeVictoria = "gokuImagenVictoria.png", 
									imagenEscudo = "gokuEscudo.png", 
									imagenEscudoIzquierda = "gokuizqEscudo.png")
	
const superman = new Jugador(   position = game.at(16,2),
									orientacion = izquierda,
									imagen = "supermanizq.png",
									imagenDerecha = "superman.png",
									imagenIzquierda = "supermanizq.png",
									imagenDisparo = "supermanlaser.png",
									imagenDisparoIzquierda = "supermanlaserizq.png",
									poder = "visionCalorica.png",
									sonidoPoder = "rayosX.mp3",
									nombre = "Superman", 
									imagenDeVictoria = "supermanImagenVictoria.png", 
									imagenEscudo = "supermanEscudo.png", 
									imagenEscudoIzquierda = "supermanizqEscudo.png")
									
const superman2 = new Jugador(   position = game.at(16,2),
									orientacion = izquierda,
									imagen = "supermanizq.png",
									imagenDerecha = "superman.png",
									imagenIzquierda = "supermanizq.png",
									imagenDisparo = "supermanlaser.png",
									imagenDisparoIzquierda = "supermanlaserizq.png",
									poder = "visionCalorica.png",
									sonidoPoder = "rayosX.mp3",
									nombre = "Superman", 
									imagenDeVictoria = "supermanImagenVictoria.png", 
									imagenEscudo = "supermanEscudo.png", 
									imagenEscudoIzquierda = "supermanizqEscudo.png")
						
 const zenitsu = new Jugador(   position = game.at(3,2),
                                    orientacion = derecha,
                                    imagen = "zenitsu.png",
                                    imagenDerecha = "zenitsu.png",
                                    imagenIzquierda = "zenitsuizq.png",
                                    imagenDisparo = "vacio.png",
                                    imagenDisparoIzquierda = "vacio.png",
                                    poder = "rayozenitsu.png",
                                    sonidoPoder= "corte.mp3",
                                    nombre = "Zenitsu", 
                                    imagenDeVictoria = "zenitsuImagenVictoria.png", 
									imagenEscudo = "zenitsuEscudo.png", 
									imagenEscudoIzquierda = "zenitsuizqEscudo.png") 

 const zenitsu2 = new Jugador(   position = game.at(16,2),
                                    orientacion = izquierda,
                                    imagen = "zenitsuizq.png",
                                    imagenDerecha = "zenitsu.png",
                                    imagenIzquierda = "zenitsuizq.png",
                                    imagenDisparo = "vacio.png",
                                    imagenDisparoIzquierda = "vacio.png",
                                    poder = "rayozenitsu.png",
                                    sonidoPoder= "corte.mp3",
                                    nombre = "Zenitsu", 
                                    imagenDeVictoria = "zenitsuImagenVictoria.png", 
									imagenEscudo = "zenitsuEscudo.png", 
									imagenEscudoIzquierda = "zenitsuizqEscudo.png") 

 const holder = new Jugador(   position = game.at(3,2),
                                    orientacion = derecha,
                                    imagen = "holder.png",
                                    imagenDerecha = "holder.png",
                                    imagenIzquierda = "holderizq.png",
                                    imagenDisparo = "holderatq.png",
                                    imagenDisparoIzquierda = "holderatq.png",
                                    poder = "pelota.png",
                                    sonidoPoder= "marama.mp3",
                                    nombre = "Holder", 
                                    imagenDeVictoria = "holderImagenVictoria.png", 
									imagenEscudo = "holderEscudo.png", 
									imagenEscudoIzquierda = "holderizqEscudo.png")
                                    
const holder2 = new Jugador(   position = game.at(16,2),
                                    orientacion = izquierda,
                                    imagen = "holderizq.png",
                                    imagenDerecha = "holder.png",
                                    imagenIzquierda = "holderizq.png",
                                    imagenDisparo = "holderatq.png",
                                    imagenDisparoIzquierda = "holderatq.png",
                                    poder = "pelota.png",
                                    sonidoPoder= "marama.mp3",
                                    nombre = "Holder", 
                                    imagenDeVictoria = "holderImagenVictoria.png", 
									imagenEscudo = "holderEscudo.png", 
									imagenEscudoIzquierda = "holderizqEscudo.png")

 const chewbacca = new Jugador(   position = game.at(16,2),
                                    orientacion = izquierda,
                                    imagen = "chewbaccaizq.png",
                                    imagenDerecha = "chewbacca.png",
                                    imagenIzquierda = "chewbaccaizq.png",
                                    imagenDisparo = "chewbacca.png",
                                    imagenDisparoIzquierda = "chewbaccaizq.png",
                                    poder = "visionCalorica.png",
                                    sonidoPoder= "aaghh.mp3",
                                    nombre = "chewbacca",
                                    imagenDeVictoria = "chewbaccaImagenVictoria.png", 
									imagenEscudo = "chewbaccaEscudo.png", 
									imagenEscudoIzquierda = "chewbaccaizqEscudo.png")

 const chewbacca2 = new Jugador(   position = game.at(3,2),
                                    orientacion = derecha,
                                    imagen = "chewbacca.png",
                                    imagenDerecha = "chewbacca.png",
                                    imagenIzquierda = "chewbaccaizq.png",
                                    imagenDisparo = "chewbacca.png",
                                    imagenDisparoIzquierda = "chewbaccaizq.png",
                                    poder = "visionCalorica.png",
                                    sonidoPoder= "aaghh.mp3",
                                    nombre = "Chewbacca", 
                                    imagenDeVictoria = "chewbaccaImagenVictoria.png", 
									imagenEscudo = "chewbaccaEscudo.png", 
									imagenEscudoIzquierda = "chewbaccaizqEscudo.png")

 const messi = new Jugador(   position = null,
                                    orientacion = derecha,
                                    imagen = "messi.png",
                                    imagenDerecha = "messi.png",
                                    imagenIzquierda = "messiizq.png",
                                    imagenDisparo = "messipateando.png",
                                    imagenDisparoIzquierda = "messipateandoizq.png",
                                    poder = "pelotazo.png",
                                    sonidoPoder= "felizAnioNuevoChino.mp3",
                                    nombre = "Messi", 
                                    imagenDeVictoria = "messiImagenVictoria.png", 
									imagenEscudo = "messiEscudo.png", 
									imagenEscudoIzquierda = "messiizqEscudo.png")
     
 const messi2 = new Jugador(   position = null,
                                    orientacion = izquierda,
                                    imagen = "messiizq.png",
                                    imagenDerecha = "messi.png",
                                    imagenIzquierda = "messiizq.png",
                                    imagenDisparo = "messipateando.png",
                                    imagenDisparoIzquierda = "messipateandoizq.png",
                                    poder = "pelotazo.png",
                                    sonidoPoder= "felizAnioNuevoChino.mp3",
                                    nombre = "Messi", 
                                    imagenDeVictoria = "messiImagenVictoria.png", 
									imagenEscudo = "messiEscudo.png", 
									imagenEscudoIzquierda = "messiizqEscudo.png")                               