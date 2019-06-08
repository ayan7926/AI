/* base case */
length1([],0).

/* inductive case */
length1([X|Rest],s(N)):-
	length1(Rest,N).
