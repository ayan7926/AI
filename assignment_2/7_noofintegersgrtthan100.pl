number_100(100,Y,1):-
	Y>100.
number_100(100,Y,0):-
	Y=<100.
number_grt_100([],0).
number_grt_100([X|L],Z):-
	number_grt_100(L,Z1),
	number_100(100,X,T),
	Z is Z1 + T.
