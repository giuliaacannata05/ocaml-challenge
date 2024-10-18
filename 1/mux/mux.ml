let mux2 (a : bool) (b: bool) (s0 : bool) : bool = (s0 && a) || (not s0 && b)

let muxIf (a : bool) (b: bool) (s0 : bool) : bool = if s0 then a else b 

let muxPat (a : bool) (b: bool) (s0 : bool) : bool = 
  match (a, b, s0) with
  | (false, false, false) -> false 
  | (false, false, true) -> false 
  | (false, true, false) -> true 
  | (false, true, true) -> false 
  | (true, false, false) -> false 
  | (true, false, true) -> true 
  | (true, true, false) -> true 
  | (true, true, true) -> true
