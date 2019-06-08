sort_bst1(L, L1):- sort_acc(L, nil, T), delete(T, L1).

sort_acc([], T, T):- !.
sort_acc([H|R], T1, T2):- insert_bst(H, T1, T3), sort_acc(R, T3, T2).

delete(nil,[]):- !.
delete(T,[M|L1]):- delete_min(T, R, M), delete(R,L1).

delete_min(bt(nil, T, R), R, T):- !.
delete_min(bt(L, T, G), bt(Aux, T, G), M):- delete_min(L, Aux, M).