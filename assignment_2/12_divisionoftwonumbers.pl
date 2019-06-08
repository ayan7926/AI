divide(A, B, 0, A):-
    B > A,!.
divide(A, B, C, R):-    
    D is A-B,
    divide(D, B, E, R),
    C is E+1.
    