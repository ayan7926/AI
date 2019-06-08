add(A, 0, A).
add(A, D, E):-
    B is D-1,
    add(A, B, C),
    E is C+1.

