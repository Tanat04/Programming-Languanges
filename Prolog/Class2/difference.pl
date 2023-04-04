isMember(X, [X|_]).
isMember(X, [_|Tail]) :- isMember(X, Tail).

isDifference([],_,[]).

isDifference([Head|Tail],Y,[Head|Z]) :-
    not(isMember(Head,Y)),
    isDifference(Tail,Y,Z), !.

isDifference([_|Tail],Y,Z) :-
    isDifference(Tail,Y,Z).