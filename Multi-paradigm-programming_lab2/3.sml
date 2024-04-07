
fun number_in_month (xs : (int * int * int) list, m :int ) = 
if  null xs
then 0
else 
    let val count = number_in_month (tl xs , m)
    in  
    if #2(hd xs) = m 
    then count +1
    else count
    end
   

;
(*fun number_in_months (xs : (int * int * int) list, m :int list ) =
if null m 
then 0
else 
    let val count =   number_in_month ( xs , hd m )  
    in 
    if null (tl m)
    then count
    else number_in_months(xs, tl m)
    end
    *)
fun number_in_months (xs : (int * int * int) list, m :int list ) =
if null m 
then 0
else 
    let val count =   number_in_months ( xs ,tl m )  
    in 
    count + number_in_month(xs, hd m)
    end    