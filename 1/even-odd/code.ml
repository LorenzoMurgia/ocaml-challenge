let win a b =
  let a_correct = (a >= 1 && a <= 5) in
  let b_correct = (b >= 1 && b <= 5) in
  match (a_correct, b_correct, is_even (a + b)) with
  | (true, true, true)   -> 1  (* A wins *)
  | (true, true, false)  -> -1  (* B wins *)
  | (true, false, _)     -> 1  (* A wins *)
  | (false, true, _)     -> -1  (* B wins *)
  | (false, false, _)    -> 0   (* No one wins *);;

  win 3 2;;