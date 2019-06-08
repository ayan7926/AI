reverse(L,L1):-
reverseacc(L,[],L1).

reverseacc([],A,A).

reverseacc([H|T],A,L1):-
reverseacc(T,[H|A],L1).