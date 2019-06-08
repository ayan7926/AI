removedup([],[]).

removedup([H|T],L1):-
	our_member(H,T),!,
	removedup(T,L1).

removedup([H|T],[H|L1]):-
	removedup(T,L1).