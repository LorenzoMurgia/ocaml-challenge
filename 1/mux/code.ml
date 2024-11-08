let mux2 s0 a b =
  (s0 && a) || (not s0 && b)  (*connettivi logici*)
  
  let mux2 s0 a b =
  if s0 then a else b         (*espressioni condizionali*)
  
  let mux2 s0 a b =
  match s0 with
  | true -> a
  | false -> b                (*pattern matching*)
  
  let mux4 s1 s0 a0 a1 a2 a3 = 
  let select_a = mux2 s0 a1 a0 in             
  mux2 s1 a3 select_a;;
  
  mux4 true true false false false false;; 