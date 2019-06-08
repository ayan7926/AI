/* base case */
length2([],0).

/* inductive case */
length2([X|Rest],N1):-
	length2(Rest,N),
	N1 is N+1.



