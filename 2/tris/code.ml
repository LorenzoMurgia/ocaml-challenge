let tris (a, b, c, d) = 
  if (a = b && a = c) || (a = b && a = d) || (a = c && a = d) || (b = c && b = d) then true else false;;

let hand () =
  let rand_int () = Random.int 10 + 1 in
  (rand_int (), rand_int (), rand_int (), rand_int ());;
