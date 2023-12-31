/*****************************************************************************

		Copyright (c) My Company

 Project:  PASTOR
 FileName: PASTOR.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "busqueda.inc"

domains
	posicion=integer
	angulo=integer
	est=estado(posicion,posicion,angulo)
	lista=est*
	limite=integer

predicates
 	
  	mueve(est,est)
  	hayParedVertical(posicion,posicion,posicion,posicion)
  	hayParedHorizontal(posicion,posicion,posicion,posicion)
  	
  	miembro(est,lista)
  	resuelve(lista,est,limite,limite) /* Lista de estados, Estado destino */
  	escribe(lista)
  	mejorsol(integer)

clauses     

	mueve(estado(I,Y,0),estado(F,Y,0)):-
		F = I + 1,
        	I < 7,
        	not(hayParedVertical(I,Y,F,Y)),
        	not(hayParedVertical(F,Y,I,Y)).
        	/*write("Ad \n"),
        	write('(', F, '-', Y, '-', 0, ')','\n').*/
        	
        mueve(estado(X,I,1),estado(X,F,1)):-
        	F = I + 1,
        	I < 6,
        	not(hayParedHorizontal(X,I,X,F)),
        	not(hayParedHorizontal(X,F,X,I)).
        	/*write("Der \n"),
        	write('(', X, '-', F, '-', 1, ')','\n').*/	
        	
        mueve(estado(I,Y,2),estado(F,Y,2)):-
        	F = I - 1,
        	I > 1,
        	not(hayParedVertical(I,Y,F,Y)),
        	not(hayParedVertical(F,Y,I,Y)).
        	/*write("At \n"),
        	write('(', F, '-', Y, '-', 2, ')','\n').*/
        	
        mueve(estado(X,I,3),estado(X,F,3)):-
        	F = I - 1,
        	I > 1,
        	not(hayParedHorizontal(X,I,X,F)),
        	not(hayParedHorizontal(X,F,X,I)).
        	/*write("Izq \n"),
        	write('(', X, '-', F, '-', 3, ')','\n').*/
         	 		
        mueve(estado(X,Y,AI),estado(X,Y,AF)):-
        	AI < 3,
        	AF = AI + 1.
        	/*write("Giramos a la derecha\n"),
        	write('(', X, '-', Y, '-', AF, ')','\n').*/
        	
        mueve(estado(X,Y,3),estado(X,Y,AF)):-
        	AF = 0.
        	/*write("Giramos a la derecha\n"),
        	write('(', X, '-', Y, '-', AF, ')','\n').*/  
        	
        mueve(estado(X,Y,AI),estado(X,Y,AF)):-
        	AI > 0,
        	AF = AI - 1.
        	/*write("Giramos a la izquierda\n"),
        	write('(', X, '-', Y, '-', AF, ')','\n').*/
        	
        mueve(estado(X,Y,0),estado(X,Y,AF)):-
        	AF = 3.
        	/*write("Giramos a la izquierda\n"),
        	write('(', X, '-', Y, '-', AF, ')','\n').*/
          	
        hayParedVertical(1,2,2,2).
        hayParedVertical(1,5,2,5).
        hayParedVertical(2,3,3,3).
        hayParedVertical(2,4,3,4).
        hayParedVertical(3,2,4,2).
        hayParedVertical(3,4,4,4).
        hayParedVertical(4,1,5,1).
        hayParedVertical(4,2,5,2).
        hayParedVertical(4,3,5,3).
        hayParedVertical(5,2,6,2).
        hayParedVertical(5,3,6,3).
        hayParedVertical(6,2,7,2).
        hayParedVertical(6,3,7,3).
        hayParedVertical(6,4,7,4).
        hayParedVertical(6,5,7,5).
        
        hayParedHorizontal(1,4,1,3).
        hayParedHorizontal(2,5,2,4).
        hayParedHorizontal(2,3,2,2).
        hayParedHorizontal(3,3,3,2).
	hayParedHorizontal(4,5,4,4).
	hayParedHorizontal(4,4,4,3).
	hayParedHorizontal(5,5,5,4).
	hayParedHorizontal(5,4,5,3).
        	
             	
        /*Estados repetidos */
        miembro(E,[E|_]).
        miembro(E,[_|T]):-
        	miembro(E,T).
        	
        /*Resolucion de algoritmo */
        resuelve(Lista,Destino,_,_):-
        	Lista=[H|T],
        	Destino=H,
        	escribe(Lista).
        
        resuelve(Lista,Destino,Lim_ant,Limite):-
        	Lista=[H|T],
        	not(miembro(H,T)),
        	mueve(H,Hfinal),
        	Nlista=[Hfinal|Lista],
        	Nue_Lim=Lim_ant+1,
        	Nue_Lim<=Limite,
        	resuelve(Nlista,Destino,Nue_Lim,Limite).
        	
        /*Escritura de la lista */
        escribe([]).
        escribe([H|T]):-
        	escribe(T),
        	write(H,'\n').
        	
        mejorsol(Lim_ini):-
        	resuelve([estado(1,4,0)],estado(7,4,0),1,Lim_ini).
        	
        mejorsol(Lim_ini):-
        	Nue_lim=Lim_ini+1,
        	mejorsol(Nue_lim).

goal

	/*resuelve([estado(1,4,0)],estado(7,4,0),1,50).*/
	mejorsol(1).
  
  