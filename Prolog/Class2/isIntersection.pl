isIntersection([Head|Tail],Y,[Head|Z]) :- isMember(Head,Y), isIntersection(Tail,Y,Z).
isIntersection([Head|Tail],Y,Z) :- not(isMember(Head,Y)), isIntersection(Tail,Y,Z).
isIntersection([],_,[]).
#isIntersection([1,2,3,4],[3,4,5],[3,4]).