max(X,Y,X) :-
    X >= Y .
max(X,Y,Y) :-
    Y >= X .

%using cut 

max(X,Y,X) :-
    X >= Y, ! .
max(_,Y,Y) .

% find grade

grade(Marks, 'A') :-
    Marks >= 75, !.

grade(Marks, 'B') :-
    Marks >= 65, !.

grade(Marks, 'C') :-
    Marks >= 55, !.

grade(Marks, 'S') :-
    Marks >= 35, !.

grade(_, 'F').


% salary calculation

salary(Basic ,F):-
    Basic >= 75000 ,
    F is Basic + (Basic * 0.3),! .

salary(Basic ,F):-
    Basic >= 50000 ,
    F is Basic + (Basic * 0.3),! .

salary(Basic ,F):-
    F is Basic + (Basic * 0.3) .

