type suit = S | H | D | C;;
type card = Card of int * suit;;

Random.self_init();;

let random_suit () =
  match Random.int 4 with
  | 0 -> S
  | 1 -> H
  | 2 -> D
  | _ -> C

let random_card () =
  let value = (Random.int 13) + 1 in
  let suit = random_suit () in
  Card (value, suit)

let rndHand () =
  let c1 = random_card () in
  let c2 = random_card () in
  let c3 = random_card () in
  let c4 = random_card () in
  let c5 = random_card () in
  (c1, c2, c3, c4, c5);;

let poker (c1, c2, c3, c4, c5) =
  let value_of (Card (v, _)) = v in
  let values = List.map value_of [c1; c2; c3; c4; c5] in
  let counts = List.fold_left (fun acc v ->
      let count = try List.assoc v acc + 1 with Not_found -> 1 in
      (v, count) :: List.remove_assoc v acc
    ) [] values in
  List.exists (fun (_, count) -> count = 4) counts;;

  let hand = rndHand ();;
  let has_poker = poker hand;;

(* Output della mano e risultato poker *)
let () = 
Printf.printf "Hand: ";
let print_card (Card (v, s)) =
  Printf.printf "(%d, %c) " v
    (match s with S -> 'S' | H -> 'H' | D -> 'D' | C -> 'C')
in
let (c1, c2, c3, c4, c5) = hand in
List.iter print_card [c1; c2; c3; c4; c5];
Printf.printf "\nPoker: %b\n" has_poker