fun is_order(data1 : int*int*int, data2 : int*int*int ) = 
if (#1 data1) < (#1 data2) orelse  ((#1 data1) = (#1 data2) andalso (#2 data1) < (#2 data2) ) orelse 
((#1 data1) = (#1 data2) andalso (#2 data1) = (#2 data2) andalso (#3 data1) < (#3 data2) )
then true
else false

