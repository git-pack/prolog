predicates
ontop(symbol, symbol)
supports(symbol, symbol)
above(symbol, symbol)
touch(symbol, symbol)

clauses
ontop(X,Y) :- above(X,Y), touch(X,Y).
supports(Y,X) :- ontop(X,Y).
above(cup, book).
touch(cup, book).

goal
supports(X,Y).

