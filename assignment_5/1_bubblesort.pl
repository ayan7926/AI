length1([],0):-!.
length1([X|L],N):-
	length1(L,N1),N is N1+1.

swap([],[]).
swap([X],[X]).
swap([X|[Y|L]],[X|L1]):-
    X=<Y,!,
    swap([Y|L],L1).
swap([X|[Y|L]],[Y|L1]):-
    swap([X|L],L1).

bubble(0,Ls,Ls).
bubble(N,L,Ls):-
    N1 is N-1,
    swap(L,L1),
    bubble(N1,L1,Ls).

bubble_m(L,Ls):-
    length1(L,N),
    bubble(N,L,Ls).