%Nelson Giovanni Castro Rodas 00043516
%Primer ejercicio de la segunda parte 
%NOTAS OBTENIDAS

notasobtenidas(A):-
    =(A,[[10,_],[8,_],[7,_],[5,_],[3,_]]),
    notas([X,jaime],A),
    notas([Y,pedro],A),
    Y>X,
    notas([Z,susana],A),
    X>Z,
    notas([B,julia],A),
    notas([C,tomas],A),
    B>C,
    C>Y.

notas([10,Persona],[[10,Persona],_,_,_,_]).
notas([8,Persona],[_,[8,Persona],_,_,_]).
notas([7,Persona],[_,_,[7,Persona],_,_]).
notas([5,Persona],[_,_,_,[5,Persona],_]).
notas([3,Persona],[_,_,_,_,[3,Persona]]).