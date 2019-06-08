postorder(nil, []).
postorder(bt(Left, Root, Right), T):-
	postorder(Left, L), 
	postorder(Right, R),
	append(R, [Root], RT),
	append(L,RT,T).