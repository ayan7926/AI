fact(N, X):-
    factacc(N, 1, X).
factacc(0, A, A).
factacc(N, A, X):-
    N1 is N-1,
    A1 is A*N,
    factacc(N1, A1, X).