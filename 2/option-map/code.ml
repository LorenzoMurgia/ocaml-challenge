let option_map f option = 
  match option with
  | Some x -> Some (f x)
  | None -> None;;
