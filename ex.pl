member(X, [X|_]).
member(X, [_|T]) :- member(X,T).

not_in_list(X,L) :- \+member(X,L).


count_nonzero([], 0).
count_nonzero([H|T], N) :-
    count_nonzero(T, N1),
    ( H =\= 0 ->
        N is N1 + 1
    ;
        N is N1
    ).

%.....................................................................
(Result = a; Result = b) ,! , Result = b.
false
(Result = a; Result = b) ,!.
Result = a
(Result = a; Result = b) ,! , Result = b.

(Result = a; Result = b) ,! , Result = b.

%......................................................

member(X, [a,b,c]).
X = a
X = b
X = c
member(X, [a,b,c]),!.
X = a
member(X, [a,b,c]),!, X=b.
false
%......................................

range(A, B, []) :-
    A > B, !.

range(A, A, [A]).

range(A, B, [A|Rest]) :-
    N is A + 1,
    range(N, B, Rest).
%.....................................

count_even([] , 0) :- !.

count_even([H|T] , N ) :-
    0 is H mod 2 , ! , 
    count_even(T , N1) ,
    N is N1 + 1 .

count_even([_|T] , N) :-
    count_even(T, N).

