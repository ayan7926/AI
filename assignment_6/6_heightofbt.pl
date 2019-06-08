height_bt(nil, 0):- !.
height_bt(bt(Left,_,Right), H):-
   height_bt(Left, LH),
   height_bt(Right, RH),
   H is max(LH, RH) + 1.