add = fn a, op -> a + op.(a) end 
cube = fn a -> a * a * a end
IO.inspect add.(10, cube)