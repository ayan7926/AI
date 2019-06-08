delfirst(A,[A],[]).
delfirst(A,[A|L],L):-!. 
delfirst(A,[B|L],[B|M]):-
delfirst(A,L,M).