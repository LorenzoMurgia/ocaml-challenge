let max_nat a b =
  if a < 0 || b < 0 then failwith "One or both numbers are not natural"
  else if a > b then a else b;;
  
  max_nat 2 5;;