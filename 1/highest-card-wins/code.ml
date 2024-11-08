type card = Joker | Val of int;;

let win p_card d_card = 
match (p_card, d_card) with 
| (Joker, Joker) -> false
| (Joker, _) -> true
| (_, Joker) -> false
| (Val p_value, Val d_value) -> p_value > d_value;;

let p_card = Joker;;
let d_card = Val 3;;

win p_card d_card;;