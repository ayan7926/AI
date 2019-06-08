subs(A, 0, A).
subs(A, B, C):-
    D is B-1,
    subs(A, D, E),
    C is E-1.

