obst(nil):- !.
obst(bt(Left,Root,Right)):- obst(Left), obst(Right), smaller(Root,Right), bigger(Root,Left).

smaller(_,nil):- !.
smaller(N,bt(Left,M,Right)):- N < M, smaller(N,Left), smaller(N,Right).

bigger(_,nil):- !.
bigger(N,bt(Left,M,Right)):- N >= M, bigger(N,Left), bigger(N,Right).