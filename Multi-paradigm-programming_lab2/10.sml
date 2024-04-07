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

fun range1 (day1:int, day2:int) = 
let fun sub(step:int) = 
if step = what_month(day2)
then step::[]
else step::sub (step+1)
in sub( what_month(day1))
end
;
fun range2 (day1:int, day2:int) = 
let fun sub2(step2:int) = 
if step2 = (what_month(day2)) orelse step2< (what_month(day2)+1)
then []
else step2::sub2 (step2-1)
in sub2( what_month(day1))
end
;
fun month_range(day1:int, day2:int) = 
if day1<day2
then range1(day1, day2)
else range2(day1, day2)
