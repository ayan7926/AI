sd(L1,L2,L3):-
	setdiff(L1,L2,L4),
	setdiff(L2,L1,L5),
	append(L4,L5,L3).