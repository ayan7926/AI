select(X,[X],[]):-!.
select(_,[],[]).
select(X,[X|L],L):-!.
select(X,[H|L1],[H|L]):-
	select(X,L1,L).