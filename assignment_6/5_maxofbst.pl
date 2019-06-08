max_element(bt(_,X,nil),X):-!.
max_element(bt(_,Root,Right),X):-
	max_element(Right,X).