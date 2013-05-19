father(peter, max).
father(peter, wouter).
father(ab, peter).
father(opa, ab).

ancestor(X,Y) :- father(X,Y).
ancestor(X,Y) :- father(X,Z), ancestor(Z,Y).
