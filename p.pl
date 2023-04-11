father(pravin, gyan).
father(pravin, rajesh).
father(gyan, yash).
father(gyan, rishav).
father(rajesh, ritik).

wife(suman, rajesh).
wife(varsha, gyan).

mother(X, Y) :- wife(X, Z), father(Z, Y).
parent(X, Y) :- father(X, Y); mother(X, Y).
child(X, Y) :- father(Y,X) ; mother(Y, X).
male(X) :- father(X,_).
female(X) :- mother(X,_).
son(X, Y):- child(X, Y) , male(X).
daughter(X, Y):- child(X, Y), famale(X).
brother(X, Y):- parent(Z, X),parent(Z, Y), X \== Y, male(X).
sister(X, Y):- parent(Z, X), parent(Z,Y), X \== Y, female(X).
uncle(X, Y):- brother(X, Z), father(Z, Y).
ansestor(X, Y):- parent(X, Y).



