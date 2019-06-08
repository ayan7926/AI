transpose([],[],[]):-!.
transpose([X1|Y1], [X2|Y2], [(X1,X2)|Y]) :-
	transpose(Y1, Y2, Y).