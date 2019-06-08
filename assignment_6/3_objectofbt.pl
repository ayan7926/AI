obt(nil):- !.
obt(bt(Left,_,Right)):-
	obt(Left),
	obt(Right).