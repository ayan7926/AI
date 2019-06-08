sum([],0).
sum([X|Rest],Sum):-
sum(Rest,Sumrest),
Sum is Sumrest+X.
