merge_sort([],[]):-!.
merge_sort([X],[X]):-!.
merge_sort(UnsortedList,SortedList):-
	divide(UnsortedList,List1,List2),
	merge_sort(List1,SortedList1),
	merge_sort(List2,SortedList2),
	merge(SortedList1,SortedList2,SortedList).

divide([],[],[]):-!.
divide([X],[X],[]):-!.
divide([X|[Y|L1]],[X|L2],[Y|L3]):-
	divide(L1,L2,L3).

merge([],[],[]):-!.
merge([X|Y],[],[X|Y]):-!.
merge([],[X|Y],[X|Y]):-!.
merge([X|L1],[Y|L2],[X|L3]):-
	X<Y,!,
	merge(L1,[Y|L2],L3).
merge([X|L1],[Y|L2],[Y|L3]):-
	X>Y,!,
	merge([X|L1],L2,L3).
merge([X|L1],[Y|L2],[X|[Y|L3]]):-
	X=Y,
	merge(L1,L2,L3).
