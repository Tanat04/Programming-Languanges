male(kim).
male(kent).
male(herbert).

female(holly).
female(margaret).
female(esther).
female(jean).

parent(kim,holly).
parent(margaret,kim).
parent(margaret,kent).
parent(esther,margaret).
parent(herbert,margaret).
parent(herbert,jean).

mother(X,Y) :- parent(X,Y), female(X).
father(X,Y) :- parent(X,Y), male(X).

sister(X,Y) :- parent(Z,X), parent(Z,Y), female(X), X\==Y.
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X\==Y.
sibling(X,Y) :- parent(Z,X), parent(Z,Y), X\==Y.
cousin(X, Y) :- parent(Z,X), parent(A,Y), sibling(Z,A).