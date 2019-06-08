exchangeall(X,Y,[X],[Y]).
exchangeall(X,Y,[],[]).
exchangeall(X,Y,[X|L],[Y|L1]):-
	exchangeall(X,Y,L,L1).
exchangeall(X,Y,[T|L],[T|L1]):-
	exchangeall(X,Y,L,L1).