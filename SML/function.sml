fun firstChar s = hd (explode s);
firstChar "abc";

fun check lt = hd(tl(lt));
check ["Wrong", "Right"];

(*Recursive function*)
(*Factorial*)
fun fact n =
    if n = 0 then 1
    else n * fact(n-1);

fact 5;

(*sum in list*)
fun listSum lt = 
    if null lt then 0 (*we can also write if lt = nill or [] then 0 *)
    else hd(lt) + listSum(tl(lt));

listSum([10,20,30,40,50]);

(*lenght of the list*)
fun lenght lt = 
    if null lt then 0
    else 1 + lenght(tl(lt));

lenght([1,2,3,4,5,6]);

(*Reverse*)
fun reverse L =
    if null L then nil
    else reverse(tl L) @ [hd L];

reverse([1,2,3,4,5,6])
