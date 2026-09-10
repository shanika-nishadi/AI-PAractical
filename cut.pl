remove_duplicates([],[]).

remove_duplicates([Head| Tail], Result) :-
    member(Head, Tail),!,   % avoid backtracking
    remove_duplicates(Tail , Result).

remove_duplicates([Head| Tail],[Head| Result]) :-
    remove_duplicates(Tail, Result) .
