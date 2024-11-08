let dice p =
  let rand = (Random.int 100) + 1 in
  if rand < p then 6
  else (Random.int 5) + 1
