exchange(X,Y,[X],[Y]).
exchange(X,Y,[],[]).
exchange(X,Y,[X|L],[Y|L]).
exchange(X,Y,[T|L],[T|L1]):-
exchange(X,Y,L,L1).