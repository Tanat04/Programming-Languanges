codeshare(cs2203,csx3004).
codeshare(csx3002,itx2001).
takes(james,csx3002).
takes(jane,csx3002).
takes(john,itx2001).
takes(darren,cs2203).
takes(minh,cs2203).
takes(david,csx3004).
takes(pimchanok,csx3004).
takes(ruby,cs3416).
takes(minh,cs3416).

classroster(X, Y):- takes(Y,X).

classmate(X,Y):-(takes(X,A),takes(Y,A)) ; (takes(X,F),takes(Y,Z),
                (codeshare(F,Z);codeshare(Z,F))), X\==Y.

