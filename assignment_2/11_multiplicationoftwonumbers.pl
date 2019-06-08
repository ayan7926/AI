mult(A, 0, 0).
mult(A, B, C):-
    D is B-1,
    mult(A, D, E),
    C is E+A. 

