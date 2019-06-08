flatten([],[]):-!.	
flatten([H|T],L):-
	flatten(H,L1),
	flatten(T,L2),
	append(L1,L2,L).

flatten(X,[X]).
