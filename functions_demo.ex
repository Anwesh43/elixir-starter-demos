add = fn a, op -> a + op.(a) end 
cube = fn a -> a * a * a end
IO.inspect add.(10, cube)

addMore = fn a -> fn b -> a + b end end 
addMore10 = addMore.(10)
result = addMore10.(200)
IO.puts("Result is #{result}")