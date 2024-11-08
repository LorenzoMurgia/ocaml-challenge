let f1 x = x mod 2 = 0;;

let f2 a = if a then 0 else 1;;

let f3 a = (a, a mod 2 = 0);;

let f4 (a, b) = if a > 0 && b = true then 0 else 1;;

let f5 a = fun b -> if a + b > 0 then 1 else 0;;

let f6 a = fun b -> a mod b = 0;;

let f7 a = fun b -> if b mod 2 = 0 && a then a else a;;

let f8 a = fun b -> if a && b then 1 else 0;;

let f9 a = fun b -> if a then 1 else b;;

let f10 a b = a + b;;

let f11 f = if f 0 then 0 else 1;;

let f12 f = (f true) + (f false);;

let f13 f = if f 0 then true else false;;

let f14 f = if (f true) && (f false) then 1 else 0;;

let f15 x (a, b) = x + a + b;; 

let f16 a = fun b -> fun c -> a + b + c;;

let f17 f = fun x -> x + f 0;; 

let f18 f = f (fun x -> x + 1) + 1;;

let f19 f = fun x -> if x then f 1 > 0 else f 0 > 0;;

let f20 f = fun b -> if b then (if f 1 then 1 else 0) else (if f 0 then 1 else 0);;
