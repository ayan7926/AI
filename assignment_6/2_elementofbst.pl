in1(X,bt(nil,X,nil)):-!.
in1(X,bt(Left,X,Right)):-!.


in1(X,bt(Left,Root,Right)):-
	X =< Root,
	in1(X,Left),!;
	X > Root,
	in1(X,Right).