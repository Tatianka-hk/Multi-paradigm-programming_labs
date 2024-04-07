fun all_except_option (xs: string list, a:string) =
let fun  ooo(xs1: string list, a1:string) = case xs1 of [] => []
| (x::xs1')  => if (a1 = x) then  ooo (xs1', a1) 
               else  x:: ooo (xs1', a1)
               in let val lst = ooo(xs,a) in if lst = xs then NONE else SOME lst end end;