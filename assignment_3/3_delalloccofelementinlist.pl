delete_all(A,[A],[]).
delete_all(X,[Y],[Y]).
delete_all(A,[A|L],M):- 
delete_all(A,L,M).
delete_all(A,[B|L],[B|M]):-
delete_all(A,L,M).