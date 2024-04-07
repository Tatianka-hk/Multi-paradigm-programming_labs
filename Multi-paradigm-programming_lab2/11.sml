fun is_order(data1 : int*int*int, data2 : int*int*int ) = 
if (#1 data1) < (#1 data2) orelse  ((#1 data1) = (#1 data2) andalso (#2 data1) < (#2 data2) ) orelse 
((#1 data1) = (#1 data2) andalso (#2 data1) = (#2 data2) andalso (#3 data1) < (#3 data2) )
then true
else false


fun oldest(data1:(int*int*int) list) = 
if null data1 
then NONE
else if null (tl data1)
then  SOME (hd data1)
else
let val data2 = oldest(tl data1)
in
if  isSome data2 andalso  is_order(hd data1, valOf data2)
then  SOME (hd data1)
else   data2
end;