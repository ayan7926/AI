split([],[],[]).
split([X|Rest],[X|T],P):-
	X>=0,
	split(Rest,T,P).
split([X|Rest],T,[X|P]):-
	X<0,
	split(Rest,T,P).

