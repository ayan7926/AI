preorder(nil, []).
preorder(bt(Left, Root, Right), T):- 
	preorder(Left, L), 
 	preorder(Right, R),
 	append([Root|L], R, T).