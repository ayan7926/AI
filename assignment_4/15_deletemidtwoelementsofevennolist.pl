delMidEven(L,L1):-
	length(L,N),
	Mid1 is N/2,
	Mid2 is N/2, 
	deleten(Mid1,L,L2),
	deleten(Mid2,L2,L1).


deleten(_,[],[]).
deleten(1,[X|L],L).
deleten(X,[T|L],[T|L1]):-
B is X-1,
deleten(B,L,L1).


length1([],0).
length1([X|Rest],N1):-
	length1(Rest,N),
	N1 is N+1.
