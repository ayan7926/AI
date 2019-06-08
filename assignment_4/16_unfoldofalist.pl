unfold(L,L1):-
	length(L,N),
	Mid is (N+1)/2,
	trim(Mid,L,L2),
	reverse(L2,RL2),
	trimlast(Mid,L,L3),
	reverse(L3,RL3),
	append(RL3,RL2,L1).