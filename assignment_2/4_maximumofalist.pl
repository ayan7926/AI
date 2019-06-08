
maxlist([X],X).
maxlist([X|Rest],Max):-
maxlist(Rest,MaxRest),
mymax(X,MaxRest,Max).
