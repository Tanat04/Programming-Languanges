(*Tuple*)
val Tanat = ( 9*2, 9*20, "Tall");

val point = ("red" , ("green", "blue"));

(*use #'index' to call out element in tuples*)

#2 Tanat;
#3 Tanat;

#2 (#2 point);

(*Lists*)

[1.0, 2.0];
[(1, 2), (1, 3)];
[[1, 2, 3], [1, 2]];

(*Empty list or nil means the type of list is unknown.*)
[];
nil;

(*We use '@' or "numbers::list"to concatenates lists.*)
[1,2,3,4,5] @ [6,7,8,9];
1 :: [2,3,4];

val x = #"c" :: [];
val y = #"b" :: x;
val z = #"a" :: y;

(*Taking first and last element out of the list*)
val a = 1:: 2:: 3::[];
hd(a);
tl(a);
tl(tl(a));
hd(tl(tl(a)));
tl(tl(tl(a)));
val b = tl(a);
hd(b);
tl(b);

(*Spliting string to chr and vice versa.*)
explode("Tanat arora");
implode([#"T", #"A", #"N", #"A", #"T"]);