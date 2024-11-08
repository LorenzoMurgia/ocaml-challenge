let square x = 
  x * x;;
  
  let exp9 x = 
  let x2 = square x in
  let x4 = square x2 in
  let x8 = square x4 in
  x8 * x;;
  
  exp9 2;;