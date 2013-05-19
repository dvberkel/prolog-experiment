count(0, []).
count(Count, [_|Tail]) :- count(Z, Tail), Count is Z + 1.

sum(0, []).
sum(Total, [Head|Tail]) :- sum(Z, Tail), Total is Head + Z.

average(T, X) :- count(C,X), sum(S, X), T is S/C.

appendto([],[],[]).
appendto([],X,X).
appendto([Head|Tail],X,Result) :- appendto(Tail,X, Z), Result = [Head| Z].


reverseList([], []).
reverseList([X], [X]).
reverseList([Head|Tail], Result) :- reverseList(Tail, Z), appendto(Z, [Head], Result).
