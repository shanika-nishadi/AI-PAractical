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

% if else 

( 5 > 3 ->   write('yes') ; write('No') )

( X > 0 ->   write('Positive') ; X < 0 ->  write('Negative') ; write('Zero'))

% find Max
max_list([X] , X).

max_list([H | T] , Max):-
    max_list(T, MaxTail),
    (  H >=  MaxTail ->  Max = H ; Max = MaxTail ). 
    

    % remove last
	remove_first([ H | T] , T) .
    

remove_last([], []).
remove_last ([Head | Tail] ,[Head | Result] ) :-
    remove_last(Tail , Result).


			remove_first([], _, []).
remove_first ([Head | Tail] ,X ,[Head | Result] ) :-
    remove_first(Tail ,X , Result).
         
    


