inner_product([], X, 0) :- !.
inner_product(X, [], 0) :- !.
inner_product([H1|T1], [H2|T2], P) :- 
	inner_product(T1, T2, S) , 
	P is S + H1 * H2.