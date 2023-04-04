Question 1
fun exist(value, nil) = false
|   exist(value, head::tail) =
        if value = head then true 
        else exist(value, tail);
exist(3,[]);
exist(3,[1,2,3,4,5]);

(*Question 2*)
fun lessthan(num, nil) = []
|   lessthan(num, head::tail) =
        if head < num then head::lessthan(num, tail) 
        else lessthan(num, tail);
lessthan(3,[]);
lessthan(3,[1,2,3,4,5]);

(*Question 3*)
fun repeats(nil) = false
|   repeats([a]) = false
|   repeats(a::b::tail) = 
        if a = b then true 
        else repeats(b::tail);
repeats([]);
repeats([1,2,3,4,4,5]);
repeats([1,2,3,4,5]);	

(*Question 4*)
fun quicksort(nil) = nil
|   quicksort (first::rest) =
        let  
                fun split(nil) = (nil, nil)
                |   split(head::tail) = 
                let    
                        val (below, above) = split(tail)
                in
                        if head < first then(head::below, above)
                        else(below, head:: above)
                end;
                val (below, above) = split(rest)
        in 
                quicksort below @ [first] @ quicksort above
        end;
quicksort([9,8,7,6,5,4,3,2,2,1]);

(*Question 5*)
fun memberSet([], _) = false
|   memberSet(head::test, value) = 
        if head = value then true
        else memberSet(test, value);
memberSet([],4);
memberSet([1,2,3,4,5,6,7,8,9], 9);

(*Question 6*)
fun constructUnion(set1, nil) = set1
|   constructUnion(nil, set2) = set2
|   constructUnion(set1, set2) = 
        let     
                fun unionHelper([], [], union) = 
                        union
                |   unionHelper([], head::tail, union) = 
                        if memberSet(union, head) then
                                unionHelper([], tail, union)
                        else unionHelper([], tail, head::union)
                |   unionHelper(set1, set2, _) = 
                        unionHelper([], set2, set1);
        in
                unionHelper(set1, set2, [])
        end;
quicksort(constructUnion([1,3,5,7,9,2,6], [2,4,6,8,10,3,5]));

(*Question 7*)
fun constructIntersection(set1, nil) = set1
|   constructIntersection(nil, set2) = set2
|   constructIntersection(set1, set2) =
        let
                fun intersectionHelper([], _, intersection) =
                        intersection
                |   intersectionHelper(head::tail, set2, intersection) = 
                        if memberSet(set2, head) then
                                intersectionHelper(tail, set2, head::intersection)
                        else intersectionHelper(tail, set2, intersection);
        in      
                intersectionHelper(set1, set2, [])
        end;

quicksort(constructIntersection([1,2,3,4,5,6,7], [3,4,5,6,7,8,9,0]));

(*Question 8*)
fun constructPowerset([]) = [[]]
|   constructPowerset(head::tail) = 
        let 
                fun powersetHelper([], element) = [[]]
                |   powersetHelper([]::tail, element) =
                        [[element]] @ powersetHelper(tail, element)
                |   powersetHelper(head::tail, element) = 
                        [head, head@[element]] @ powersetHelper(tail, element);
        in      
                powersetHelper(constructPowerset tail, head)
        end;

constructPowerset([1,2,3])
(*constructPowerset(nil)*)

