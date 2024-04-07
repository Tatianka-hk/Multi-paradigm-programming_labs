
fun number_in_month (xs : (int * int * int) list, m :int ) = 
if  null xs
then 0
else 
    let val count = number_in_month (tl xs , m :int )
    in  
    if #2(hd xs) = m 
    then count +1
    else count
    end
   
   
