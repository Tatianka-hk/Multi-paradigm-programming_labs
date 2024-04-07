fun get_nth(x: (int*int*int) list, n:int)=
if null x orelse n=0 orelse n<0
then []
else 
    let fun count (from:int,x: (int*int*int) list ) =
    if from = n orelse null x 
    then (hd x)::[]
    else (hd x)::count(from+1, tl x)
    in
    count (1,x)
    end
