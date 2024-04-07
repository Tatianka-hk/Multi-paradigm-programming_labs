val months=[31,59 ,90,120 ,151,181,212,243,273,304,334,365];

fun get_month(x: int list, n:int)=
let fun count (from:int,x1: int list ) =
    if from = n orelse null x1 
    then hd x1
    else count(from+1, tl x1)
in
    count (1,x)
end
;

fun what_month(day:int)=
if day<0 orelse day >365
then 0
else
   let fun sub (answer:int) = 
   if day < get_month(months,answer) orelse day = get_month(months,answer)
   then answer
   else sub(answer+1)
   in sub(1)
   end
