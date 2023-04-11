last_element([X],X).
last_element([_|TAIL],X) :- last_element(TAIL,X).


%First Occurrence

delete_first_occurrence(_,[],[]).
delete_first_occurrence(X, [X|Tail], Tail) :- !.
delete_first_occurrence(X, [Head|Tail], [Head|Result]) :- delete_first_occurrence(X, Tail, Result).


%All Occurrence

delete_element(_, [], []).
delete_element(X, [X|Tail], Result):- delete_element(X, Tail, Result).
delete_element(X, [Head|Tail], [Head|Result]) :- X \= Head, delete_element(X, Tail, Result).

%define Union Predicate

union([], L, L).
union([H|T], L, U):- member(H, L), union(T,L,U).
union([H|T], L, [H|U]) :- \+ member(H,L), union(T,L,U).

%define Intersection Predicate
intersection([], _, []).
intersection([H|T], L, [H|I]) :- member(H,L), intersection(T, L, I).
intersection([H|T], L, I) :- \+ member(H,L), intersection(T, L, I).


