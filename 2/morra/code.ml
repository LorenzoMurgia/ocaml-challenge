type winner = Player | Computer | Tie ;;

let win (hp, gp) : (int * int) * winner =
  let hc = Random.int 6 in      
  let gc = Random.int 11 in     
  let sum = hp + hc in 

  let result =
    if gp = sum && gc <> sum then Player
    else if gc = sum then Computer
    else Tie
  in
  ((hc, gc), result)          

let _ =
  Random.self_init ();        
  print_endline (match snd (win (2, 5)) with
                 | Player -> "Player"
                 | Computer -> "Computer"
                 | Tie -> "Tie");
  print_endline (match snd (win (2, 5)) with
                 | Player -> "Player"
                 | Computer -> "Computer"
                 | Tie -> "Tie");;
                 