square_row(0,_).

square_row(Cols, Char) :-
    write(Char),
    Cols1 is Cols -1,
    square_row(Cols1, Char).
    
square(0, _, _).

square(Rows, Cols, Char) :-
    Rows > 0,
    square_row(Cols, Char),
    nl,
    Rows1 is Rows - 1,
    square(Rows1, Cols, Char).
