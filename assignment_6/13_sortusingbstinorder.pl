sort_bst(L, L1):- 
	sort_acc(L, nil, T),
	inorder(T, L1).

sort_acc([], T, T):- !.
sort_acc([H|R], T1, T2):-
	insert_bst(H, T1, T3),
 	sort_acc(R, T3, T2).