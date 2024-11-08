let minmax3 a b c = 
  let min = if a < b then (if a < c then a else c)
              else (if b < c then b else c) in 
  let max = if a > b then (if a > c then a else c)
              else (if b > c then b else c) in (min, max);;
  
  minmax3 1 2 3;;