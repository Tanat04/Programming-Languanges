female(pam).
female(liz).
female(pat).
female(ann).

male(jim).
male(bob).
male(tom).
male(peter).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(bob,peter).
parent(peter,jim).
parent(pat,jim).

mother(X,Y) :- parent(X,Y), female(X).
father(X,Y) :- parent(X,Y), male(X).
haschild(X) :- parent(X,_).
sister(X,Y) :- parent(Z,X), parent(Z,Y), female(X), X\==Y.
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X\==Y.

grandparent(X, Y) :- parent(X,Z), parent(Z,Y).
grandmother(X, Y) :- mother(X,Z), parent(Z,Y).
grandfather(X, Y) :- father(X,Z), parent(Z,Y).
wife(X,Y) :- parent(X,Z), parent(Y,Z), female(X), male(Y).
husband(X,Y) :- parent(X,Z), parent(Y,Z), female(Y), male(X).
uncle(X,Y) :- brother(X,Z), parent(Z,Y).