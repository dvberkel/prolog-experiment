different(1, 2).
different(1, 3).
different(1, 4).
different(2, 1).
different(2, 3).
different(2, 4).
different(3, 1).
different(3, 2).
different(3, 4).
different(4, 1).
different(4, 2).
different(4, 3).

row1([U, V, W, X, _, _, _, _, _, _, _, _, _, _, _, _], Result) :- Result = [U, V, W, X].
row2([_, _, _, _, U, V, W, X, _, _, _, _, _, _, _, _], Result) :- Result = [U, V, W, X].
row3([_, _, _, _, _, _, _, _, U, V, W, X, _, _, _, _], Result) :- Result = [U, V, W, X].
row4([_, _, _, _, _, _, _, _, _, _, _, _, U, V, W, X], Result) :- Result = [U, V, W, X].

column1([U, _, _, _, V, _, _, _, W, _, _, _, X, _, _, _], Result) :- Result = [U, V, W, X].
column2([_, U, _, _, _, V, _, _, _, W, _, _, _, X, _, _], Result) :- Result = [U, V, W, X].
column3([_, _, U, _, _, _, V, _, _, _, W, _, _, _, X, _], Result) :- Result = [U, V, W, X].
column4([_, _, _, U, _, _, _, V, _, _, _, W, _, _, _, X], Result) :- Result = [U, V, W, X].

block1([U, V, _, _, W, X, _, _, _, _, _, _, _, _, _, _], Result) :- Result = [U, V, W, X].
block2([_, _, U, V, _, _, W, X, _, _, _, _, _, _, _, _], Result) :- Result = [U, V, W, X].
block3([_, _, _, _, _, _, _, _, U, V, _, _, W, X, _, _], Result) :- Result = [U, V, W, X].
block4([_, _, _, _, _, _, _, _, _, _, U, V, _, _, W, X], Result) :- Result = [U, V, W, X].

valid([U, V, W, X]) :- different(U, V), different(U, W), different(U, X),
		       different(V, W), different(V, X),
		       different(W, X).
solved(Sudoku) :-row1(Sudoku, R1), valid(R1),
		 row2(Sudoku, R2), valid(R2),
		 row3(Sudoku, R3), valid(R3),
		 row4(Sudoku, R4), valid(R4),
		 column1(Sudoku, C1), valid(C1),
		 column2(Sudoku, C2), valid(C2),
		 column3(Sudoku, C3), valid(C3),
		 column4(Sudoku, C4), valid(C4),
		 block1(Sudoku, B1), valid(B1),
		 block2(Sudoku, B2), valid(B2),
		 block3(Sudoku, B3), valid(B3),
		 block4(Sudoku, B4), valid(B4).

partial(Sudoku) :- row1(Sudoku, R1), valid(R1).
