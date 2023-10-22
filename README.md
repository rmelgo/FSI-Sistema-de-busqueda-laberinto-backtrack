# FSI-Sistema-de-busqueda-laberinto-backtrack

![inicio](https://github.com/rmelgo/FSI-Sistema-de-busqueda-laberinto-backtrack/assets/145989723/763abf67-044f-4690-ae5e-e3d5bc6576c6)

# - Introducción

Proyecto realizado en la asignatura de Fundamentos de Sistemas Inteligentes del grado de Ingenieria Informática de la Universidad de Salamanca. El enunciado del proyecto se encuentra subido en el repositorio en un archivo PDF llamado *PrácticaBúsquedaLaberinto.pdf*.
  
El principal objetivo de este proyecto es la realización de un programa en Prolog que implemente la estrategia de backtracking para que un robot pueda resolver un laberinto. 

Especificaciones básicas del problema:

- El robot cuenta con un sensor de posición que permite saber en que posición del laberinto se encuentra y un sensor de choque que permite detectar las paredes del laberinto.
- El robot unicamente cuenta con movimiento de avance y giro de 90 grados hacia derecha e izquierda.

Por una parte, se va a plantear una primera versión donde se implementará la versión básica del algortimo de backtracking.  
Por otra parte, se va a plantear una segunda versión donde se implementará una versión con límite de profundidad incremental del algortimo de backtracking.

# - Comentarios sobre el entorno de ejecución

Para ejecutar este programa, se requerira de la herramienta **VisualProlog**.    

Esta herramienta puede descargarse a través del siguiente enlace:

 <a href="https://github.com/rmelgo/PA-Sistema-multiagente-JADE/blob/main/enunciadoPr%C3%A1cticaAgentesPA2021-2022.pdf" target="_blank">📁😎</a>

[<enlace>](https://github.com/rmelgo/PA-Sistema-multiagente-JADE/blob/main/enunciadoPr%C3%A1cticaAgentesPA2021-2022.pdf)

# Comentarios sobre el material adjuntado

El proyecto cuenta con los siguientes ficheros:

- Una carpeta llamada ***Resolucion_Laberinto_Prolog*** que contendrá el proyecto en Visual Prolog (*Practica Sistemas de Busqueda.vpr*) en el que se implementará el algoritmo de backtraking para resolver el laberinto (2 versiones).
- Un documento llamado ***Práctica de Sistemas de Búsqueda.pdf*** que contiene una especificación formal del problema del laberinto asi como pruebas de la resolución del laberinto utilizando las 2 versiones del algortimo de backtracking.

# - Pasos necesarios para ejecutar el programa

**Paso 1: Compilar el programa**  

Para ello se debe introducir el siguiente comando:    

```gcc cruce.c libcruce.a -o cruce```

Como la libreria *libcruce.a* esta diseñada para sistemas de 32 bits y no es posible mezclar código de 64 bits con codigo de 32 bits, será necesario incluir una nueva directiva en el comando gcc para que genere codigo en 32 bits compatible con la biblioteca. De esta manera, el comando necesario para compilar el programa es el siguiente:

```gcc -m32 cruce.c libcruce.a -o cruce```

Si se produce algún tipo de error al realizar la compilación será por que el sistema donde se ejecuta el programa no tiene las librerias de 32 bits necesarias. Para incluirlas se deberá ejecutar el siguyiente comando:

```sudo apt-get install gcc-multilib```

Tras ejecutar este comando, se generará un fichero ejecutable llamado *cruce*. Observese como es necesario tanto el fichero *cruce.c* como la biblioteca estática de funciones *libcruce.a* para generar el ejecutable.

**Paso 2: Ejecutar el programa**  

Para ello se debe introducir el siguiente comando:    

```./cruce <número-máximo-procesos> <velocidad>```

Tras ejecutar este comando, el programa se habra ejecutado correctamente, siempre y cuendo se hayan introducido los argumentos correspondientes.

**Finalización del programa**

Para finalizar la ejecución del programa simplemente bastara con pulsar las teclas CTRL+C desde el terminal. De esta manera, el programa automaticamente recibira una señal de terminación por lo que realizará las tareas necsarias para finalizar el cruce y liberar todos los recursos utilizados.

# - Ejemplo de ejecución

## Ejecución a velocidad media (10) y máximo de 4 procesos

En la siguiente imagen, se muestra un ejemplo del uso y funcionamiento del programa con un límite de 4 procesos y una velocidad de 10:    

![Ejemplo ejecucion 1](https://github.com/rmelgo/SSOO-II-Programacion-multiproceso-cruce-semaforos/assets/145989723/a72bece7-157e-4224-93f6-48f9a7595866)

## Ejecución a velocidad máxima y máximo de 49 procesos

En la siguiente imagen, se muestra un ejemplo del uso y funcionamiento del programa con un límite de 49 procesos y una velocidad de 0:    

![Ejemplo ejecucion 2](https://github.com/rmelgo/SSOO-II-Programacion-multiproceso-cruce-semaforos/assets/145989723/cbe17750-07ad-44d2-91ac-cbf5288b5e08)
