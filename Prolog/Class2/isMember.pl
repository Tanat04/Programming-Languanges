isMember(X, [X|_]).
isMember(X, [_|Tail]) :- isMember(X, Tail).