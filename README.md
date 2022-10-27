# Dimension Clash 
> El jueguito del equipo sigma :coffee: 


![image](https://user-images.githubusercontent.com/102762669/198189678-c03070b9-5225-480c-9820-c14fcb6ecf6a.png)



## REGLAS/INSTRUCCIONES

Dimension Clash cuenta con un modo de juego 1VS1 donde cada jugador podrá escoger a su personaje favorito, el juego cuenta con una gran lista con personajes como: 

-	Superman
-	Goku
-	Zenitsu
-	Holder
-	Chewbacca

Cada jugador cuenta con 2 herramientas con las que podrá derrotar a su contrincante: Un láser que se extenderá por la eternidad hasta chocar con una caja 
o el contrincante y con la capacidad de plantar 3 bombas en el suelo que luego de un tiempo ser harán invisibles para ambos jugadores. **Ojo con hacer KABUM compañero!!!**

Si caes a un precipicio o te mata tu contrincante 2 veces, **PERDES o te damos un lindo final de discreta para resolver!** 

El jugador1 podrá escoger a su personaje al inicio de la partida con los números 1,2,3,4 y 5. Mientras que el jugador2 con 6,7,8,9 y 0.
Una vez que cada jugador escogió a su personaje la partida iniciara. Los controles para cada jugador son los siguientes: 

JUGADOR 1:
-	W,D,A para saltar , ir hacia la derecha e ir hacia la izquierda respectivamente
-	E para sacar el laser y derrotar a su oponente (?
-	S para soltar una de las tres bombas

JUGADOR 2:
-	I,J,L para saltar, ir hacia la izquierda e ir hacia la derecha respectivamente
-	P para lanzar un laser y derrotar a su oponente 
-	K para soltar una de las tres bombas

![image](https://user-images.githubusercontent.com/102762669/198189756-f01d30e5-31e8-4d78-8765-786bc47293d1.png)

## DOCUMENTACION:

#### SECCION JUGADOR: 


Dentro del codigo de Dimension Clash, se implementa una interfaz a la que denominamos collisionDeLaser,esta interfaz cuenta con un método denominado efectoLaser() que es utilizado polimorficamente por cada una de las clases que se muestran en el diagrama siguiente: 

![image](https://user-images.githubusercontent.com/102762669/198192851-04796a1a-0669-46c9-939f-6f42bb4fbd93.png)

efectoLaser() tiene como funcionalidad alterar el estado del elemento que es colisionado con el laser. Gracias al polimorfismo utilizado, el efectoLaser en una caja no tiene relevancia, dado que a este no es necesario que le afecte, pero si a un elemento de tipo Jugador. Si el laser colisiona en este ultimo, el atributo muerto perteneciente al jugador pasara a true.

>efecto laser en jugador:
![image](https://user-images.githubusercontent.com/102762669/198192934-c7ac0240-82ac-4e95-a902-a00eee56f3c3.png)

>efecto laser en caja: 


![image](https://user-images.githubusercontent.com/102762669/198193020-76a57f83-dcd8-48aa-b52f-f75657dcac7e.png)

>donde se aplica polimorficamente: en el metodo dispararLaserEn del jugador,que evalua el efecto que tiene el laser segun el elemento
![image](https://user-images.githubusercontent.com/102762669/198193115-868159e1-a4a0-4477-b174-3f65a4f5adfa.png)
![image](https://user-images.githubusercontent.com/102762669/198193194-ac5a83d7-7720-4fd7-8fe5-5a98e5792684.png)

El juego consta también con una interfaz a la que denominamos obstáculo, esta interfaz tiene un método denominado RestringeMovimiento(), la cual se utiliza polimórficamente en cada una de las clases que se muestra en el diagrama. Se tomo esta decisión ya que dependiendo del valor de retorno de ese mensaje, se disparará un láser en una posicion determinada.

![image](https://user-images.githubusercontent.com/102762669/198196339-4aa8340b-15a2-4809-b98a-9251091883b1.png)


#### SECCION PARTIDA: 


Partida es una clase que consta de 3 metodos muy importantes para el juego, estos son los 3 distintos enfrentamiento que se pueden dar entre los 2 jugadores.
Tambien cuenta con un método cuantificarVictoria, este método se ocupa de ir actualizando las flags: victoriasPersonaje1 o victoriasPersonaje2 con la cantidad de 
veces que ganó cada jugador. 
Cada uno de estos métodos para iniciar un enfrentamiento se ocupa de instanciar el enfrentamiento especifico para tal, donde cada enfrentamiento entiende el método jugar() 

(imagen de codigo)
(imagen de diagrama)

#### SECCION NIVELES: 


Level es una clase abstracta que cuenta con un método renderizar que es utilizado polimórficamente por cada nivel (primerNivel, segundoNivel y tercerNivel),cada uno de estos niveles hereda de la clase level. 
Level conoce al objeto render, que es utilizado para renderizar cada uno de las cajas utilizadas y se pueden mostrar en pantalla. Utilizamos una coleccion de 
soportes en levels.wlk para setear la posición de cada soporte por nivel. La clase soporte entiende el método preparar().

![image](https://user-images.githubusercontent.com/102762669/198193400-0a5aaea0-9800-4aa3-99c5-495b8be91562.png)


## Equipo de desarrollo

- ALBERIO, Valentina
- BENCINA, Morena
- DELLE PIANE, Lucas
- PEREZ, Federico
- RODRIGUEZ, Luciano

## Otros

- Curso:K2004/Facultad:UTNFRBA
- Versión de wollok
- Una vez terminado, no tenemos problemas en que el repositorio sea público / queremos manternerlo privado
