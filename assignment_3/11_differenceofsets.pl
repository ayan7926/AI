setdiff([],L,[]).
setdiff([X|L1],L2,L3):-
our_member(X,L2),!,setdiff(L1,L2,L3).
setdiff([X|L1],L2,[X|L3]):-
setdiff(L1,L2,L3).
