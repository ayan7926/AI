delete(X, bt(L, T, G), bt(Aux, T, G)):- X < T, !, delete(X, L, Aux).
delete(X, bt(L, T, G), bt(L, T, Aux)):- X > T, !, delete(X, G, Aux).
delete(X, bt(L, X, nil), L):- !.
delete(X, bt(nil, X, G), G):- !.
delete(X, bt(L, X, G), bt(L, M, Aux)):- delete_min(G, Aux, M).

delete_min(bt(nil, T, R), R, T):- !.
delete_min(bt(L, T, G), bt(Aux, T, G), M):- delete_min(L, Aux, M).