getlast([X],X):-!.
getlast([H|T],Last):-
	getlast(T,Last).

addend([],X,[X]):-!.
addend([H|T],X,[H|L1]):-
	addend(T,X,L1).

exchange_first_last([], []):-!.
exchange_first_last([X], [X]):-!.
exchange_first_last([H|T],[Last|T2]):-
	getlast(T,Last),
	cutlast(T,T1),
	%T2 = [T1|H].
	addend(T1,H,T2).


