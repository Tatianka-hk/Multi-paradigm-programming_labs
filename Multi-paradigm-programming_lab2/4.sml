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

   