inorder(nil, []).
inorder(bt(Left, Root, Right), T):- 
	inorder(Left, L), 
 	inorder(Right, R),
 	append(L, [Root|R], T).



 	