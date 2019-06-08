replacen(1,Y,[X|L],[Y|L]).
replacen(X,Y,[T|L],[T|L1]):-
	B is X-1,
	replacen(B,Y,L,L1).