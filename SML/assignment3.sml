(* fun isOdd(num: int) = num mod 2 <> 0;
isOdd(346);

(*---------------------------------------*)

fun cube(n:int) = n * n *n;
cube(12);

(*---------------------------------------*)

fun cubeR(n: real) = n*n*n;
cubeR(1.5);

(*---------------------------------------*)

fun fourth(lt) = hd(tl(tl(tl(lt))));
fourth([1.2, 2.3, 5.3, 9.9, 2.2]);

(*---------------------------------------*)

fun min3(a , b, c) = if a < b andalso a < c then a else if b < a andalso b < c then b else c ;
min3(22,20,21);

(*---------------------------------------*)

fun remove2(a, b, c) = (a, c);
remove2(1,2,3);

(*---------------------------------------*)

fun thirdch(str: string) = hd(tl(tl(explode(str))));
thirdch("Tanat");

(*---------------------------------------*)

fun rotate(lt: 'a list, num: int) = 
    if null lt then 
        []
    else 
        if num = 0 then 
            lt
        else 
            rotate(tl(lt) @ [hd(lt)], num - 1);
rotate([1,2,3,4,5], 3);

(*---------------------------------------*)

(*Helper function*)
fun findMax(lt: int list, value: int) = 
    if null lt then
        value
    else 
        let 
            val largest = 
                if hd(lt) >= value then
                    hd(lt)
                else
                    value;
        in  
            findMax(tl(lt), largest)
        end

(*Main function*)
fun max(lt: int list) = findMax(tl(lt), hd(lt))

(*---------------------------------------*)

(*Find length*)
fun lenght lt = 
    if null lt then 0
    else 1 + lenght(tl(lt));

(*Find odd fuction*)
fun isOdd(num: int) = num mod 2 <> 0;

fun select(lt: 'a list, function: ('a -> bool), lenght: int) =
    if lenght = 0 then
        lt
    else
        if function(hd(lt)) then
            hd(lt) :: select(tl(lt), function, lenght-1)
        else
            select(tl(lt), function, lenght-1);

val lt = [1,2,3,4,5,33,43,55,22];
select(lt, isOdd, lenght(lt)); *)

(* fun isPrime num = 
    if num = 1 then false 
    else 
        if num = 2 orelse num = 3 orelse num = 5 orelse num = 7 then true
        else 
            if num mod 2 <> 0 andalso num mod 3 <> 0 andalso num mod 5 <> 0 andalso num mod 7 <> 0 then true
            else false *)
