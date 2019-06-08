deleten(1,[X|L],L).
deleten(X,[T|L],[T|L1]):-
B is X-1,
deleten(B,L,L1).