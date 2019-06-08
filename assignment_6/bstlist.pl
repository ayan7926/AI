insert_bst_list(X,nil,[X]):-!.

insert_bst_list(X,bt(Left,Root,Right),L):-
	insert_bst(X,bt(Left,Root,Right),bt(Left1,Root,Right)),
	inorder(bt(Left1,Root,Right),L).

insert_bst_list(X,bt(Left,Root,Right),L):-
	insert_bst(X,bt(Left,Root,Right),bt(Left,Root,Right1)),
	inorder(bt(Left,Root,Right1),L).