% Represent a state as [CL,ML,B,CR,MR]
start([3,3,left,0,0]).
goal([0,0,right,3,3]).

legal(CL,ML,CR,MR) :-
	% is this state a legal one?
	ML>=0, CL>=0, MR>=0, CR>=0,
	(ML>=CL ; ML=0),
	(MR>=CR ; MR=0).

% Possible moves:
move([CL,ML,left,CR,MR],[CL,ML2,right,CR,MR2], 'Two missionaries cross left to right'):-
	% Two missionaries cross left to right.
	MR2 is MR+2,
	ML2 is ML-2.

move([CL,ML,left,CR,MR],[CL2,ML,right,CR2,MR], 'Two cannibals cross left to right'):-
	% Two cannibals cross left to right.
	CR2 is CR+2,
	CL2 is CL-2.

move([CL,ML,left,CR,MR],[CL2,ML2,right,CR2,MR2], 'One missionary and one cannibal cross left to right'):-
	%  One missionary and one cannibal cross left to right.
	CR2 is CR+1,
	CL2 is CL-1,
	MR2 is MR+1,
	ML2 is ML-1.

move([CL,ML,left,CR,MR],[CL,ML2,right,CR,MR2], 'One missionary crosses left to right'):-
	% One missionary crosses left to right.
	MR2 is MR+1,
	ML2 is ML-1.

move([CL,ML,left,CR,MR],[CL2,ML,right,CR2,MR], 'One cannibal crosses left to right'):-
	% One cannibal crosses left to right.
	CR2 is CR+1,
	CL2 is CL-1.

move([CL,ML,right,CR,MR],[CL,ML2,left,CR,MR2], 'Two missionaries cross right to left'):-
	% Two missionaries cross right to left.
	MR2 is MR-2,
	ML2 is ML+2.

move([CL,ML,right,CR,MR],[CL2,ML,left,CR2,MR], 'Two cannibals cross right to left'):-
	% Two cannibals cross right to left.
	CR2 is CR-2,
	CL2 is CL+2.

move([CL,ML,right,CR,MR],[CL2,ML2,left,CR2,MR2], 'One missionary and one cannibal cross right to left'):-
	%  One missionary and one cannibal cross right to left.
	CR2 is CR-1,
	CL2 is CL+1,
	MR2 is MR-1,
	ML2 is ML+1.

move([CL,ML,right,CR,MR],[CL,ML2,left,CR,MR2], 'One missionary crosses right to left'):-
	% One missionary crosses right to left.
	MR2 is MR-1,
	ML2 is ML+1.

move([CL,ML,right,CR,MR],[CL2,ML,left,CR2,MR], 'One cannibal crosses right to left'):-
	% One cannibal crosses right to left.
	CR2 is CR-1,
	CL2 is CL+1.


% Recursive call to solve the problem
path([CL1,ML1,B1,CR1,MR1],[CL2,ML2,B2,CR2,MR2],Explored,MovesList) :- 
   move([CL1,ML1,B1,CR1,MR1],[CL3,ML3,B3,CR3,MR3],Output), 
   legal(CL3,ML3,CR3,MR3),
   not(member([CL3,ML3,B3,CR3,MR3],Explored)),
   path([CL3,ML3,B3,CR3,MR3],[CL2,ML2,B2,CR2,MR2],[[CL3,ML3,B3,CR3,MR3]|Explored],[ [[CL3,ML3,B3,CR3,MR3],[CL1,ML1,B1,CR1,MR1], Output] | MovesList ]).

% Solution found
path([CL,ML,B,CR,MR],[CL,ML,B,CR,MR],_,MovesList):- 
	output(MovesList).

% Printing
output([]) :- nl. 
output([[A,B,Output]|MovesList]) :- 
	output(MovesList), 
   	write(B), write(' -> '), write(A), write(' : '), write(Output), nl.

% Find the solution for the missionaries and cannibals problem
find :- 
   path([3,3,left,0,0],[0,0,right,3,3],[[3,3,left,0,0]],[]).