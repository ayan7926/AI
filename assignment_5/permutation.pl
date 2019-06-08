permutation_sort([],[]).
permutation_sort(L,L1):-
	permutation(L,L1),
	ordered(L1),!.

permutation([],[]):-!.
permutation(L,[H|T]):-
	select(H,L,R),
	permutation(R,T).

ordered([]):-!.
ordered([X]):-!.
ordered([X|[Y|L]]):-
	X =< Y,
	ordered([Y|L]).

select(X,[X],[]).
select(_,[],[]).
select(X,[X|L],L).
select(X,[H|L1],[H|L]):-
	select(X,L1,L).