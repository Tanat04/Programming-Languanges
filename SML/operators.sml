(*Line 1, 15 and 37*)
(* div is '//' *)
~ 1 + 2 - 3 * 4 div 5 mod 6;

(* / is a normal division*)
~ 1.0 + 2.0 - 3.0 * 4.0 / 5.0;

(* ^ is use to concatenate string*)
"Tanat" ^ " Arora," ^ " *****";

(* <, >, <=.... is use for boolean *)
1.3 <= 1.3;
#"T" < #"A";

(* '=' and '<>' is same bruh??????????????????????????????*)
1 = 2;

(* No logic at all this part -_-
for 'or'  we use 'orelse'
for 'and' we use 'andalso'*)
1 > 2 orelse 2 > 3;
1 < 3 andalso not (1 > 9);

(*Precedence so far:
{orelse} < {andalso} < {=,<>,<,>,<=,>=} < {+,-,^} 
< {*,/,div,mod} < {~,not}*)

(*Type Conversion*)
real(123);
round(1.4);
round(1.5);
round(1.9);
ord(#"T");
chr(84);
str(#"T");

(*square 3+1;
square (3+1); Does not work??? *)

