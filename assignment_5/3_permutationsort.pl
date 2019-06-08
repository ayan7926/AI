permutationsort(A,B):- perm(A,B), sorted(B), !.

sorted([]):- !.
sorted([A]):- !.
sorted([A|[B|T]]):- A=<B, sorted([B|T]).

perm([],[]):- !.
perm(L,[H|T]):-
				append(V,[H|U],L),
				append(V,U,W),
				perm(W,T).

append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).
