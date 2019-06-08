postorder_from_inorder_preorder([],[],[]).
postorder_from_inorder_preorder(In,[X|P],Post):-
	divide_inorder(In,X,L1,L2),
	length2(L1,N),
	divide_subtrees(P,N,L3,L4),
	postorder_from_inorder_preorder(L1,L3,Left),
	postorder_from_inorder_preorder(L2,L4,Right),
	append(Left,Right,Post1),
	append(Post1,[X],Post).

divide_inorder([X|L],X,[],L):-!.
divide_inorder([H|L],X,[H|L1],L2):- divide_inorder(L,X,L1,L2).

divide_subtrees(L,0,[],L):-!.
divide_subtrees([H|T],N,[H|T1],T2):- N1 is N-1, divide_subtrees(T,N1,T1,T2).