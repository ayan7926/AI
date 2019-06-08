sq_rt(P,X,L):-
	B is P*P,
	B =< X,
	T is P+1,
	sq_rt(T,X,L);
	B is P*P,
	B > X,
	L is P-1.

square_root(X,L):-
	sq_rt(0,X,L).
