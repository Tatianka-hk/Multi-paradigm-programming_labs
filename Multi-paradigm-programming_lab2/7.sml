val month_names = ["January","Febuary","March","April","May","June","Jule","August",
"September","October","November", "December"];
fun get_month_name(x: string list, n:int)=
let fun count (from:int,x: string list ) =
    if from = n orelse null x 
    then hd x
    else count(from+1, tl x)
in
    count (1,x)
end
;

fun date_to_string(data:int*int*int) =
  get_month_name(month_names,#2 data)^","
