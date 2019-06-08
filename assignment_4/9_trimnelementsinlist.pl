trim(0,L,L):-!.
trim(N,[H|T],L1):-
	N1 is N-1,
	trim(N1,T,L1).