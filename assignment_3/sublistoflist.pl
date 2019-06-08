sublist([],_).
sublist([T|L],[Y|L1]):-
	sublist([T|L],L1).
sublist([X|L],[X|L1]):-
	sublist(L,L1).