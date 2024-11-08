let consensus3 (f0, f1, f2) x =
  try
    let r0 = f0 x in
    let r1 = f1 x in
    let r2 = f2 x in
    if r0 = r1 || r0 = r2 then Some r0
    else if r1 = r2 then Some r1
    else None
  with _ -> None;;