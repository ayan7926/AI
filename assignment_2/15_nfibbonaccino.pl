/* base case */
fib(1,[0]).
fib(2,[1,0]).

/* inductive case */
fib(N,[X|[Y|[Z|Rest]]]):-
	B is N-1,
	fib(B,[Y|[Z|Rest]]),
	X is Y+Z.
	