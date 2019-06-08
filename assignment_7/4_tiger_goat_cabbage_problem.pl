cross(w, e).
cross(e, w).

execmove([F, T, G, C], tiger, [NF, NT, NG, NC]) :- F = T,
                                               cross(F, NF),
                                               cross(T, NT),
                                               NG = G,
                                               NC = C.
execmove([F, T, G, C], goat, [NF, NT, NG, NC]) :- F = G,
                                               cross(F, NF),
                                               NT = T,
                                               cross(G, NG),
                                               NC = C.
execmove([F, T, G, C], cabbage, [NF, NT, NG, NC]) :- F = C,
                                               cross(F, NF),
                                               NT = T,
                                               NG = G,
                                               cross(C, NC).
execmove([F, T, G, C], alone, [NF, NT, NG, NC]) :- cross(F, NF),
                                               NT = T,
                                               NG = G,
                                               NC = C.


answer([e,e,e,e], []).
answer(State, [Move|Moves]) :- execmove(State, Move, [F, T, G, C]),
                               (T \= G; G = F),
                               (G \= C; C = F),
                               answer([F, T, G, C], Moves).
                               
anshelp(S, L, X) :- length(X, L), answer(S, X);
                 L2 is L + 1, anshelp(S, L2, X).
                 
getans(S, X) :- anshelp(S, 0, X).
printans([]).
printans([tiger|R]) :- write('The farmer takes the tiger across.\n'), printans(R).
printans([goat|R]) :- write('The farmer takes the goat across.\n'), printans(R).
printans([cabbage|R]) :- write('The farmer takes the cabbage across.\n'), printans(R).
printans([alone|R]) :- write('The farmer crosses alone.\n'), printans(R).



find:- getans([w,w,w,w], X), printans(X).