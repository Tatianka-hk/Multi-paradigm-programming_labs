fun number_before_reaching_sum(sum :int, x:int list) = 
if null x 
then 0
else
let fun sub (answer:int,x1:int list, sum1:int) =
    if (hd x1) + sum1 = sum orelse (hd x1) + sum1 > sum orelse null x orelse   null x1 
    then answer
    else sub( answer+1,tl x1 ,sum1+(hd x1))
    in
    sub (0,x,0)
    end

