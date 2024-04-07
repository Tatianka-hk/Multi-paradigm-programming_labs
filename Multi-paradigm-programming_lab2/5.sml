fun dates_in_month(xs : (int*int*int) list, m:int ) = 
if  null xs
then []
else 
    let val x = dates_in_month (tl xs , m )
    in  
    if #2 (hd xs) = m 
    then (hd xs)::x
    else x
    end
;
fun dates_in_months (xs : (int * int * int) list, m :int list ) =
if null m 
then []
else 
    let val x =   dates_in_months ( xs ,tl m )  
    in 
    x @ dates_in_month(xs, hd m)
    end  
