# Nombre del juego 

## Equipo de desarrollo

- ALBERIO, Valentina
- BENCINA, Morena
- DELLE PIANE, Lucas
- PEREZ, Federico
- RODRIGUEZ, Luciano

## Capturas

(agregar)

## Reglas de Juego / Instrucciones

(Escribirlas)

## Documentacion
La jugabilidad de NOMBRE JUEGO está repartida principalmente en 4 clases: Jugador, Laser, Caja, y Bomba. El jugador tiene
la capacidad de disparar láseres que eliminan a los demás jugadores, como también colocar bombas en el nivel que pueden
eliminar tanto al rival como a sí mismo. Ni los jugadores ni los láseres pueden traspasar las cajas, pero sí a otros jugadores,
láseres, y bombas. 

Podemos representar el movimiento del jugador como muestra el diagrama:
![movimiento](https://user-images.githubusercontent.com/102623682/195479213-881170f3-2d45-4635-93a6-da8413308bcf.png)
Jugador está relacionado con 4 objetos que representan las posibles orientaciones del avatar (arriba, abajo, derecha, e izquierda),
que implementan la interfaz Movimientos. Se delega en estos objetos la tarea de buscar una posición a la que mover al jugador (teniendo en cuenta que las posiciones sobre las que hay cajas son inaccesibles), la de modificar visualmente al jugador tras moverse, y la de obtener la linea de tiro del jugador, que abarca desde la posición del jugador hasta el extremo de la pantalla; siendo bloqueado por las cajas. Los objetos direccion implementan esta interfaz de manera polimórfica. 

Para el disparo del láser, tenemos que la clase Jugador usa una interfaz con el método lineaDeTiro(); que es implementada por los objetos de dirección. A su vez, los objetos de dirección necesitan que los demás objetos entiendan restringeMovimiento(), ya que dependiendo del valor de retorno de ese mensaje, se disparará un láser en esa posición. 
![disparar](https://user-images.githubusercontent.com/102623682/195481501-007c5b5c-7bcb-4535-9b62-ed952012fa45.png)

Modelando el efecto que el contacto con el láser genera en los objetos que colisiona,
![efecto laser](https://user-images.githubusercontent.com/102623682/195482436-41bf9925-52a7-4fca-958f-1e554453b0fc.png)
vemos que todas las clases que representan objetos visuales implementan la interfaz Efectos de daño. efectoLaser() es un mensaje polimórfico, ya que las reacciones de los distintos objetos a la colisión con el láser son diferentes.





## Otros

- Curso/Facultad
- Versión de wollok
- Una vez terminado, no tenemos problemas en que el repositorio sea público / queremos manternerlo privado
