# Futbolito

Este ejercicio es para explicar como trabajar en grupo usando GIT. La dinámica de la clase
está en esta presentación: https://docs.google.com/presentation/d/1ciyiqqpjKKbO2A8GPwTAGJqLnhx2R9C5ZVQZHI6c74A/edit?usp=sharing.

Los requerimientos esperan que ya se haya explicado wollok game (parte 1: objetos visuales, posiciones y mapeo de teclas (bloques)). También incluye
validaciones (excepciones) y testing


## Dinámica

Cada integrante del grupo debe resolver sólo uno de los requerimientos en un 
*feature branch*, y luego realizar un *pull request (PR)* sobre *main*. Esperar a que 
cada estudiante termine su requerimiento antes de comenzar a *mergear* los *pull requests*

## Requerimientos (pizarrón)

- **Esquina** : al apretar la tecla *e* la pelota se debe quedar en el origen (0,0)
- **Buscarla** : al apretar la tecla *b* lionel se mueve a donde está la pelota


## Requerimientos (Estudiantes)
- **Llevarla**: Hacer que Lionel lleve la pelota al apretar la tecla *l*: Cuando la lleva, la pelota
se mueve junto con Lionel. Validar que la pelota se encuentre en la misma posición que Lionel al comenzar la acción.
- **Patear**: Hacer que Lionel patee la pelota al apretar la tecla *p*: La pelota se desplaza 3 posiciones
 a la derecha (o lo máximo que se pueda antes de salir de pantalla). 
 Validar que la pelota se encuentre en la misma posicion que Lionel
- **Taquito**: Hacer Lionel de un pase atrás al apretar la tecla *t*: La pelota se mueve 2 posiciones a la izquierda
(o lo máximo que se pueda mover). Validar que la pelota se encuentre en la misma posición que Lionel
- **Camiseta** Hacer que Lionel cambie su camiseta al apretar la tecla *c*. Si tiene la camiseta titular pasará a 
usar la suplente y viceversa

Nota: No olvidarse de hacer los tests también, son parte del requerimiento!

## Luego de los *merges*
Puede pasar dos cosas luego de todos los merges:
1) Haya quedado código duplicado (¿Tal vez en las validaciones?). Si es así, en un nuevo feature branch
hacer el refactor para eliminar el código duplicado.
2) A veces hay requerimientos que se pueden molestar entre ellos. Probablemente luego de usar
la funcionalidad de "llevarla" haya dejado de funcionar bien el patear y el taquito, 
porque luego de cambiar la posicion de la pelota al patear, al estar llevandola. ésta vuelve hacia lionel.
Si pasa eso hay que hacer un nuevo feature branch que:
	- Tenga un test que detecte el problema
	- Resolver el problema con la siguiente definición: Cuando se patea o se da el pase
de taco linonel deja de llevarla.


   


