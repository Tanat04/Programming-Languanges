fun halve nil = (nil, nil)
|   halve [a] = ([a], nil)
|   halve (a::b::cs) =
        let
            val (x, y) = halve cs
        in
            (a::x, b::y)
        end;

halve([1,2,3,4,5,6,7]);

