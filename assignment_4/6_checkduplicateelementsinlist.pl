%has_duplicate(L):-
hd([H|T]):-
our_member(H,T),!.

hd([H|T]):-
hd(T).

