/* base case */
last([X],X).
last([_|Rest],X):-
	last(Rest,X).