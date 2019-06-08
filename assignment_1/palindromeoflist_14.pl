/* base case */
palindrome([]).

/* inductive case */
palindrome(L):-
	reverse(L,L).