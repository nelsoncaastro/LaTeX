%Nelson Giovanni Castro Rodas 00043516

extraersubarbol(Elemento_a_encontrar, Original_Arbol, Subarbol, Lastre):-
    cortar(Elemento_a_encontrar, Original_Arbol, Subarbol, Lastre).

cortar(_,[],[],[]):-!.

cortar(Elemento_a_encontrar, [Izq,Elemento_a_encontrar,Der], Subarbol, []):-
    =(Subarbol,[Izq,Elemento_a_encontrar,Der]),!.

cortar(Elemento_a_encontrar, [Izq,Cen,Der], Subarbol, Lastre):-
    >(Elemento_a_encontrar,Cen),
    cortar(Elemento_a_encontrar, Der, Subarbol, Auxiliadora),
    =(Lastre,[Izq,Cen,Auxiliadora]),!.

cortar(Elemento_a_encontrar, [Izq,Cen,Der], Subarbol, Lastre):-
    =<(Elemento_a_encontrar,Cen),
    cortar(Elemento_a_encontrar, Izq, Subarbol, Auxiliadora),
    =(Lastre,[Auxiliadora,Cen,Der]),!.