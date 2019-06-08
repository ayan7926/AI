/* base case */
length1([],0).

/* inductive case */
length1([X|Rest],N1):-
	length1(Rest,N),
	N1 is N+1.



