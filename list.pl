concat_lists([], List, List).

concat_lists([Elem | List1], List2 , [Elem | List3]) :-
    concat_list( List1 ,List2 , List3).

% find sum
element_sum([] , 0).


element_sum([H  | T], Sum) :-
	element_sum(T,  TailSum) ,
    Sum is H + TailSum.


% find length

length_list([], 0).

length_list([_ | T ], Length) :-
    length_list(T , TailLength),
    Length is TailLength + 1.


% Find index

index_of(Element, [Element|_], 1).

index_of(Element, [_|Tail], Index) :-
    index_of(Element, Tail, Index1),
    Index is Index1 + 1.

 % find last elt

last_elt( [Element] , Element).

last_elt([_|Tail] , Element) :-
    last_elt(Tail , Element).
