# Implementación de una estrategia de Backtracking para resolver un laberinto

![inicio](https://github.com/rmelgo/FSI-Sistema-de-busqueda-laberinto-backtrack/assets/145989723/763abf67-044f-4690-ae5e-e3d5bc6576c6)

# - Introducción

Proyecto realizado en la asignatura de Fundamentos de Sistemas Inteligentes del grado de Ingenieria Informática de la Universidad de Salamanca. El enunciado del proyecto se encuentra subido en el repositorio en un archivo PDF llamado *PrácticaBúsquedaLaberinto.pdf*.
  
El principal objetivo de este proyecto es la realización de un programa en Prolog que implemente la estrategia de backtracking para que un robot pueda resolver un laberinto. 

Especificaciones básicas del problema:

- El robot cuenta con un sensor de posición que permite saber en que posición del laberinto se encuentra y un sensor de choque que permite detectar las paredes del laberinto.
- El robot unicamente cuenta con movimiento de avance y giro de 90 grados hacia derecha e izquierda.

Por una parte, se va a plantear una primera versión donde se implementará la **versión básica del algortimo de backtracking**.  
Por otra parte, se va a plantear una segunda versión donde se implementará una **versión con límite de profundidad incremental del algortimo de backtracking**.

# - Comentarios sobre el entorno de ejecución

Para ejecutar este programa, se requerira de la herramienta **VisualProlog**.    

Esta herramienta puede descargarse a través del siguiente enlace:

<a href="https://github.com/rmelgo/FSI-Sistema-de-busqueda-laberinto-backtrack/blob/main/visual_prolog_5.2_windows.rar" target="_blank">VisualProlog 5.2</a>

# Comentarios sobre el material adjuntado

El proyecto cuenta con los siguientes ficheros:

- Una carpeta llamada ***Resolucion_Laberinto_Prolog*** que contendrá el proyecto en Visual Prolog en el que se implementará el algoritmo de backtraking para resolver el laberinto.
  - Dentro de esta carpeta, exsite un archivo llamado ***Practica Sistemas de Busqueda.vpr*** que contiene el proyecto en VisualProlog con la implementación de las 2 versiones del algoritmo de backtraking para resolver el laberinto. En este proyecto de VisualProlog existen 2 ficheros principales:
 
    - Un fichero llamado ***Practica Sistemas de Busqueda (version basica).pro*** que contiene la implementación de la versión básica del algoritmo de backtracking para resolver el laberinto.
    - Un fichero llamado ***Practica Sistemas de Busqueda (version con limite incremental).pro*** que contiene la implementación de la versión con límite de profundidad incremental del algoritmo de backtracking para resolver el laberinto.
      
- Un documento llamado ***Práctica de Sistemas de Búsqueda.pdf*** que contiene una especificación formal del problema del laberinto así como pruebas de la resolución del laberinto utilizando las 2 versiones del algortimo de backtracking.
- Una carpeta llamada ***visual_prolog_5.2_windows.rar*** que contiene el entorno de VisualProlog, listo para ser instalado y usado.

# - Ejemplo de ejecución

## Algoritmo de backtrack básico

En la siguiente imagen, se muestra un ejemplo del uso y funcionamiento de la versión básica del algoritmo de backtracking diseñado para resolver el problema del laberinto:

![Ejemplo ejecucion 1](https://github.com/rmelgo/FSI-Sistema-de-busqueda-laberinto-backtrack/assets/145989723/2e2b5685-1f63-49ed-9f35-1dc511466e5b)

El recorrido obtenido que debe seguir el robot para alcanzar la salida del laberinto es el siguiente:

![Ejemplo ejecucion 2](https://github.com/rmelgo/FSI-Sistema-de-busqueda-laberinto-backtrack/assets/145989723/f3eeb465-e9bf-408e-ba98-7c14981faf55)

## Algoritmo de backtrack con límite de profundidad incremental

En la siguiente imagen, se muestra un ejemplo del uso y funcionamiento de la versión con límite de profundidad incremental del algoritmo de backtracking diseñado para resolver el problema del laberinto:

![Ejemplo ejecucion 3](https://github.com/rmelgo/FSI-Sistema-de-busqueda-laberinto-backtrack/assets/145989723/c32549d1-ecd9-4826-b516-bff55d819838)

El recorrido obtenido que debe seguir el robot para alcanzar la salida del laberinto es el siguiente:

![Ejemplo ejecucion 4](https://github.com/rmelgo/FSI-Sistema-de-busqueda-laberinto-backtrack/assets/145989723/3d3fc4fb-f7b6-4044-a641-5896a423af6a)

# Conclusiones y resultados

Como se puede observar, la versión básica del algoritmo de backtracking proporciona una solucion bastante enrevesada para salir del laberinto y larga mientras que la versión con límite de profundidad incremental encuentra la mejor solución para salir del laberinto.

- Por un lado, la **versión básica del algoritmo de backtracking** explora en primer lugar los avances, si no es posible avanzar explora los giros a la derecha, y si no se puede avanzar ni girar a la derecha se exploran los giros a la izquierda. Por esto no es casualidad que solo haya un giro a la izquierda en la solución obtenida.

- Por otro lado, la **versión con límite de profundidad incremental** del algoritmo de backtracking explora primero las posibles soluciones con 1 movimiento, luego con 2 movimientos, 3, 4 y asi sucesivamente hasta encontrar una solución. De esta manera, como el coste de todos los movimientos es unitario, esta versión nos garantiza encontrar la solucion óptima.

