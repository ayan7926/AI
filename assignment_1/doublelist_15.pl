double([],[]).
double([X|Rest],[X|[X|List]]):-
double(Rest,List).