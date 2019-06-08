subset([],L1).
subset([T|L],[Y|L1]):-
	subset([T|L],L1).
subset([X|L],[X|L1]):-
	subset(L,L1).