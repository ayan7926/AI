gen(N2,N2,[N2]).
gen(N1,N2,L):-
T is N1 + 1,
gen(T,N2,P),
append([N1],P,L).