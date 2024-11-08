let ( <*> ) f_opt x_opt =
match f_opt, x_opt with
| Some f, Some x -> Some (f x)   
| _ -> None;;
