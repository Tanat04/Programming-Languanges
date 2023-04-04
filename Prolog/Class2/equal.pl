isMember(X, [X|_]).
isMember(X, [_|Tail]) :- isMember(X, Tail).

isSubset([],_).
isSubset([Head|Tail],Y):-
    isMember(Head,Y),
    select(Head,Y,Z),
    isSubset(Tail,Z).

isEqual(X,Y) :-
    isSubset(X,Y),
    isSubset(Y,X).


