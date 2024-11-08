type suit = S | H | D | C;;
type card = Card of int * suit;;

let get_value (Card (v, _)) = v;;

let straight (c1, c2, c3, c4, c5) = 
  let v1 = get_value c1 in
  let v2 = get_value c2 in
  let v3 = get_value c3 in
  let v4 = get_value c4 in
  let v5 = get_value c5 in

  let values = [v1; v2; v3; v4; v5] in

  let sorted_values = List.sort compare values in
  
  match sorted_values with
    | [a; b; c; d; e] -> (b = a + 1) && (c = b + 1) && (d = c + 1) && (e = d + 1)
    | _ -> false;;
  