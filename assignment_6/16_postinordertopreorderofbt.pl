preorder_from_inorder_postorder([],[],[]).
preorder_from_inorder_postorder(In,Post,Pre):-
	last_element(Post,X,P),
	divide_in(In,X,L1,L2),
	length2(L1,N),
	divide_subtrees(P,N,L3,L4),
	preorder_from_inorder_postorder(L1,L3,Left),
	preorder_from_inorder_postorder(L2,L4,Right),
	append([X|Left],Right,Pre).

last_element([X],X,[]).
last_element([H|T],X,[H|T1]):-
	last_element(T,X,T1).

divide_in([X|L],X,[],L):-!.
divide_in([H|L],X,[H|L1],L2):- divide_in(L,X,L1,L2).

divide_subtrees(L,0,[],L):-!.
divide_subtrees([H|T],N,[H|T1],T2):- N1 is N-1, divide_subtrees(T,N1,T1,T2).