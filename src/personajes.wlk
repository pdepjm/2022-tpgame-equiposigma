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
									nombre = "goku")
									
const goku2 = new Jugador(	position = game.at(3,2),
									orientacion = derecha,
									imagen = "goku.png",
									imagenDerecha = "goku.png",
									imagenIzquierda = "gokuizq.png",
									imagenDisparo = "gokukame.png",
									imagenDisparoIzquierda = "gokukameizq.png",
									poder = "kamehameha.png", 
									sonidoPoder = "kamehameha.mp3",
									nombre = "goku")
	
const superman = new Jugador(   position = game.at(16,2),
									orientacion = izquierda,
									imagen = "supermanizq.png",
									imagenDerecha = "superman.png",
									imagenIzquierda = "supermanizq.png",
									imagenDisparo = "supermanlaser.png",
									imagenDisparoIzquierda = "supermanlaserizq.png",
									poder = "visionCalorica.png",
									sonidoPoder = "rayosX.mp3",
									nombre = "superman")
									
const superman2 = new Jugador(   position = game.at(16,2),
									orientacion = izquierda,
									imagen = "supermanizq.png",
									imagenDerecha = "superman.png",
									imagenIzquierda = "supermanizq.png",
									imagenDisparo = "supermanlaser.png",
									imagenDisparoIzquierda = "supermanlaserizq.png",
									poder = "visionCalorica.png",
									sonidoPoder = "rayosX.mp3",
									nombre = "superman")
						
 const zenitsu = new Jugador(   position = game.at(3,2),
                                    orientacion = derecha,
                                    imagen = "zenitsu.png",
                                    imagenDerecha = "zenitsu.png",
                                    imagenIzquierda = "zenitsuizq.png",
                                    imagenDisparo = "vacio.png",
                                    imagenDisparoIzquierda = "vacio.png",
                                    poder = "rayozenitsu.png",
                                    sonidoPoder= "corte.mp3",
                                    nombre = "zenitsu") 

 const zenitsu2 = new Jugador(   position = game.at(16,2),
                                    orientacion = izquierda,
                                    imagen = "zenitsuizq.png",
                                    imagenDerecha = "zenitsu.png",
                                    imagenIzquierda = "zenitsuizq.png",
                                    imagenDisparo = "vacio.png",
                                    imagenDisparoIzquierda = "vacio.png",
                                    poder = "rayozenitsu.png",
                                    sonidoPoder= "corte.mp3",
                                    nombre = "zenitsu") 

 const holder = new Jugador(   position = game.at(3,2),
                                    orientacion = derecha,
                                    imagen = "holder.png",
                                    imagenDerecha = "holder.png",
                                    imagenIzquierda = "holderizq.png",
                                    imagenDisparo = "holderatq.png",
                                    imagenDisparoIzquierda = "holderatq.png",
                                    poder = "pelota.png",
                                    sonidoPoder= "marama.mp3",
                                    nombre = "holder")
                                    
const holder2 = new Jugador(   position = game.at(16,2),
                                    orientacion = izquierda,
                                    imagen = "holderizq.png",
                                    imagenDerecha = "holder.png",
                                    imagenIzquierda = "holderizq.png",
                                    imagenDisparo = "holderatq.png",
                                    imagenDisparoIzquierda = "holderatq.png",
                                    poder = "pelota.png",
                                    sonidoPoder= "marama.mp3",
                                    nombre = "holder")

 const chewbacca2 = new Jugador(   position = game.at(3,2),
                                    orientacion = derecha,
                                    imagen = "chewbacca.png",
                                    imagenDerecha = "chewbacca.png",
                                    imagenIzquierda = "chewbaccaizq.png",
                                    imagenDisparo = "chewbacca.png",
                                    imagenDisparoIzquierda = "chewbaccaizq.png",
                                    poder = "visionCalorica.png",
                                    sonidoPoder= "aaghh.mp3",
                                    nombre = "chewbacca")

 const chewbacca = new Jugador(   position = game.at(16,2),
                                    orientacion = izquierda,
                                    imagen = "chewbaccaizq.png",
                                    imagenDerecha = "chewbacca.png",
                                    imagenIzquierda = "chewbaccaizq.png",
                                    imagenDisparo = "chewbacca.png",
                                    imagenDisparoIzquierda = "chewbaccaizq.png",
                                    poder = "visionCalorica.png",
                                    sonidoPoder= "aaghh.mp3",
                                    nombre = "chewbacca")