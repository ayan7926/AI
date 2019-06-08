sublist([],_).
sublist([X|L],[X|M]):-
sublist(L,M).