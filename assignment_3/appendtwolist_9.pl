/* Base Case */
append([],l,l)
append([X|l1],l2,[X|l3]):-
	append(l1,l2,l3).