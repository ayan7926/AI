trimlast(N,L,L1):-
	reverse(L,RL),
	trim(N,RL,L2),
	reverse(L2,L1).