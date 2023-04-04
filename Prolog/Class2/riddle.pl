isMember(X, [X|]).

isMember(X, [|Tail]) :- 
    isMember(X,Tail).

isUnion([Head|Tail], Y, Z) :- isMember(Head, Y), isUnion(Tail, Y, Z).
isUnion([Head|Tail], Y, [Head|Z]) :- 
                        not(isMember(Head, Y)), isUnion(Tail, Y, Z).
isUnion([], Y, Y).

isIntersection([],,[]).
isIntersection([Head|Tail], Y, [Head|Z]) :-
                        isMember(Head,Y), isIntersection(Tail,Y,Z).
isIntersection([|Tail],Y,Z) :- isIntersection(Tail,Y,Z).

isSubset([],_).
isSubset([Head|Tail],Y):- isMember(Head,Y), 
                        select(Head,Y,Z), isSubset(Tail,Z).

isEqual(X,Y) :- isSubset(X,Y), isSubset(Y,X).

isDifference([],,[]).
isDifference([Head|Tail],Y,[Head|Z]) :- 
                        not(isMember(Head,Y)), isDifference(Tail,Y,Z).
isDifference([|Tail],Y,Z) :- isDifference(Tail,Y,Z).