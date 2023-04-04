isUnion([Head|Tail],Y,Z) :- isMember(Head,Y), isUnion(Tail,Y,Z).
isUnion([Head|Tail],Y,[X|Z]) :- not(isMember(Head,Y)), isUnion(Tail,Y,Z).
isUnion([],Y,Y).

#isUnion([1,2,3],[2,3,4],[1,2,3,4]).