delMidOdd(L,L1):-
	length1(L,N),
	Mid is (N+1)/2,
	deleten(Mid,L,L1).

deleten(_,[],[]).
deleten(1,[X|L],L).
deleten(X,[T|L],[T|L1]):-
B is X-1,
deleten(B,L,L1).


length1([],0).
length1([X|Rest],N1):-
	length1(Rest,N),
	N1 is N+1.





	