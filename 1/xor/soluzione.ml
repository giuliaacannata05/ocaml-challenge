let xor1 (a : bool) (b : bool) : bool = (not(a &&b)) && ((a || b))


let xor2 (a : bool) (b : bool) : bool = if a then (if b then false else true) else (if b then true else false )

let xor3 (a : bool) (b : bool) : bool = 
    match (a,b) with 
    | (true, true) -> false
    | (false, false) -> false
    | _ -> true 