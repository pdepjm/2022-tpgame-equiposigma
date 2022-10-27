Dimension Clash

![image](https://user-images.githubusercontent.com/102762669/198189678-c03070b9-5225-480c-9820-c14fcb6ecf6a.png)

REGLAS/INSTRUCCIONES

Dimension Clash cuenta con un modo de juego 1VS1 donde cada jugador podrá escoger a su personaje favorito, el juego cuenta con una gran lista con personajes como: 

-	Superman
-	Goku
-	Zenitsu
-	Holder
-	Chewbacca

Cada jugador cuenta con 2 herramientas con las que podrá derrotar a su contrincante: Un láser que se extenderá por la eternidad hasta chocar con una caja 
o el contrincante y con la capacidad de plantar 3 bombas en el suelo que luego de un tiempo ser harán invisibles para ambos jugadores. Ojo con hacer KABUM compañero!!!
Si caes a un precipicio o te mata tu contrincante 2 veces, PERDES o te damos un lindo final de discreta para resolver! 
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

DOCUMENTACION:

Sección Jugador: 
Dimension Clash implementa una interfaz a la que denominamos colisionDeLaser,esta interfaz cuenta con un método denominado efectoLaser() 
que es utilizado polimorficamente por cada una de las clases que se muestran en el diagrama siguiente: 

(imagen diagrama de interfaz colisionDeLaser)

El juego consta también con una interfaz a la que denominamos obstáculo, esta interfaz tiene un método denominado RestringeMovimiento(), 
la cual se utiliza polimórficamente en cada una de las que se muestra en el programa. Se tomo esta decisión ya que dependiendo del valor de retorno de ese mensaje,
se disparará un láser en esa posición.

(imagen de diagrama de interfaz obstaculo)

SECCION PARTIDA: 
Partida es una clase que consta de 3 metodos muy importantes para el juego, estos son los 3 distintos enfrentamiento que se pueden dar entre los 3 jugadores.
Tambien cuenta con un método cuantificarVictoria, este método se ocupa de ir actualizando las flags: victoriasPersonaje1 o victoriasPersonaje2 con la cantidad de 
veces que ganó cada jugador. 
Cada uno de estos métodos para iniciar un enfrentamiento se ocupa de instanciar el enfrentamiento especifico para tal, donde cada enfrentamiento entiende el método 
jugar() que esta definido polimmorficamente.

(imagen de codigo)
(imagen de diagrama)

SECCION NIVELES: 
Level es una clase abstracta que cuenta con un método renderizar que es utilizado polimórficamente por cada nivel (primerNivel, segundoNivel y tercerNivel). 
Level conoce al objeto render, que es utilizado para renderizar cada uno de las cajas utilizadas y se pueden mostrar en pantalla. Utilizamos una lista de 
soportes en levels.wlk para setear la posición de cada soporte por nivel. La clase soporte entiende el método preparar().

(imagen de diagrama de clases en la parte de niveles)

