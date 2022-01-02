add = &(&1 + &2)
multiply = &(&1 * &2)
display = &(IO.puts "result is #{&1}")

display.(add.(10, 20))
display.(multiply.(20, 30))