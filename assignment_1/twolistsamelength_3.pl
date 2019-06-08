/* base case */
samelength([],[]).

/* inductive case */
samelength([X|Rest1],[Y|Rest2]):-
samelength(Rest1,Rest2).

