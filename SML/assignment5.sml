(*(* Question 1
val squarelist = map (fn x => x * x);
squarelist([1, 2, 3, 4]);

(*Question 2*)
val multipairs = map (op *);
multipairs([(1,2), (3,4)]);

(*Question 3*)
val ilist2rlist = map(fn x => real(x));
ilist2rlist([1,2,3]);

(*Question 4*)
val truecount = foldr (fn (a, b) => if a then b + 1 else b) 0;
truecount([true, false, false, true]);

(*Question 5*)
fun evens nil = []
|   evens lt = foldr (fn (a, b) => if a mod 2 = 0 then a::b else b) [] lt;
evens([1,2,3,4,5,6,7,8,9,10]);
evens([]);

(*Question 6*)
val maxpairs = map (fn (a, b) => if a > b then a else b);
maxpairs([(1,3), (4,2), (~3,~4)]);

(*Question 7*)
fun convert lst = foldr (fn ((a, b), (c, d)) => (a::c, b::d)) ([], []) lst;
convert([(1,2), (3,4), (5,6)]); *)

fun mymap lst = foldr (fn a => f(a)) lst
